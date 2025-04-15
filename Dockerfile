FROM maptiler/tileserver-gl

ADD config.json styles.json shorelines_annual_style.json roc_style.json buildings_style.json /data/
