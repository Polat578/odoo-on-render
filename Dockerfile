# Odoo 18 Community resmi imaj
FROM odoo:18

# Özel eklentilerin varsa:
# COPY ./addons /mnt/extra-addons
# ENV ODOO_EXTRA_ADDONS=/mnt/extra-addons

# (Opsiyonel) PDF raporları için:
# RUN apt-get update && apt-get install -y --no-install-recommends wkhtmltopdf && rm -rf /var/lib/apt/lists/*

EXPOSE 8069

# Render env değişkenlerini kullanarak Odoo’yu başlat
# Shell formu sayesinde $DB_* değerleri runtime'da genişler
CMD odoo \
  --db_host=$DB_HOST \
  --db_port=$DB_PORT \
  --db_user=$DB_USER \
  --db_password=$DB_PASSWORD \
  --db_name=$DB_NAME \
  --http-port=8069 \
  --proxy-mode
