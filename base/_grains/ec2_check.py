import urllib2

#this is the declaration of our function which we decided to call ec2_check
#the ec2_check function will be pulling all the data ec2 from the ec2 instance (i.e instance id, ami, subnet etc)
def ec2_check():

    # Instantiate grains dictionary
    grains = {}

 try:
    # Instantiate grains key cloud info
    grains['cloud_info'] = []

    # Sets the Base url for base
    base_url = 'http://169.254.169.254/latest/meta-data/'

    instance_id = urllib2.urlopen(base_url + '/instance-id')
    instance_type = urllib2.urlopen(base_url + 'instance-type')
    instance_id = instance_id.read()
    instance_type = instance_type.read()

    grains['cloud_info'].append({'provider': 'Amazon'})

    # After the grains ['cloud_info'] part, the [0] calls the first key/value pair in the append method array. In this case it's the provider = Amazon
    grains['cloud_info'][0]['instance_id'] = instance_id
    grains['cloud_info'][0]['instance_type'] = instance_type
    #print grains
    return grains
except urllib2.URLError:
    return False

if __name__== '__main__':
    ec2_check()
