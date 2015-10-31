BUCKET=s3://lukehutscal.com

all:
	git push origin master
	s3cmd mb $(BUCKET)
	s3cmd put --acl-public --guess-mime-type index.html basscss.min.css $(BUCKET)