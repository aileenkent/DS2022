#!/usr/bin/python3

import boto3
import requests
s3 = boto3.client('s3', region_name="us-east-1")

# import s3

url = "https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExdG1pandmaWFnMHg2OThub2RweWMwcjB1a2FvdnlqbHc3bTJ5NGdzOCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/U3UNk3ebWLAviwNNh8/giphy.webp"


gif = requests.get(url, stream=True)

f = open("file.gif", "w+")

f.write(gif.text)

f.close()

bucket = 'ds2022-sbx3sw'
local_file = 'file.gif'

resp = s3.put_object(
    Body = local_file,
    Bucket = bucket,
    Key = local_file
)

 s3_client = boto3.client('s3')
 try:
    response = s3_client.generate_presigned_url('get_object',
                                                    Params={'Bucket': bucket_name,
                                                            'Key': object_name},
                                                    ExpiresIn=604800)
