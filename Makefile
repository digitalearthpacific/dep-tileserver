data/coastlines_0-7-0-54.gpkg:
	wget https://deppcpublicstorage.blob.core.windows.net/output/dep_ls_coastlines/dep_ls_coastlines_0-7-0-54.gpkg \
		-O data/dep_ls_coastlines_0-7-0-54.gpkg

data/coastlines_0-7-0-54.pmtiles:
	wget https://deppcpublicstorage.blob.core.windows.net/output/dep_ls_coastlines/dep_ls_coastlines_0-7-0-54.pmtiles \
		-O data/dep_ls_coastlines_0-7-0-54.pmtiles

download:
	make data/coastlines_0-7-0-54.gpkg
	make data/coastlines_0-7-0-54.pmtiles

upload:
	aws s3 sync \
		data/ \
		s3://dep-public-prod/dep_ls_coastlines/ \

up:
	docker-compose up
