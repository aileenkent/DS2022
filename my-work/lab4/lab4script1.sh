#!/bin/bash

curl https://giving.virginia.edu/sites/default/files/2021-01/data-science-building-night.jpg > sdspic.jpg

aws s3 cp sdspic.jpg s3://ds2022-sbx3sw/

aws s3 presign --expires-in 604800 s3://ds2022-sbx3sw/sdspic.jpg




