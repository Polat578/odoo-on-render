FROM odoo:18

# Özel addonların varsa:
# COPY ./addons /mnt/extra-addons
# ENV ODOO_EXTRA_ADDONS=/mnt/extra-addons

# (Opsiyonel) rapor PDF desteği:
# RUN apt-get update && apt-get install -y --no-install-recommends wkhtmltopdf && rm -rf /var/lib/apt/lists/*

EXPOSE 8069
