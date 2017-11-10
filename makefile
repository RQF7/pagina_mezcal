
CARPETA_FUENTE := web/less
CARPETA_OBJETO := web/css
COMPILADOR_LESS := node_modules/less/bin/lessc

estilo: $(CARPETA_OBJETO)/index.css $(CARPETA_OBJETO)/historia.css $(CARPETA_OBJETO)/productos.css \
	$(CARPETA_OBJETO)/procesos.css $(CARPETA_OBJETO)/contacto.css \
	$(CARPETA_OBJETO)/confirmacion_edad.css

$(CARPETA_OBJETO)/index.css: $(CARPETA_FUENTE)/index.less \
	$(CARPETA_FUENTE)/general.less $(CARPETA_FUENTE)/encabezado.less $(CARPETA_FUENTE)/variables.less
	$(COMPILADOR_LESS) $< $@

$(CARPETA_OBJETO)/historia.css: $(CARPETA_FUENTE)/historia.less \
	$(CARPETA_FUENTE)/general.less $(CARPETA_FUENTE)/encabezado.less $(CARPETA_FUENTE)/variables.less
	$(COMPILADOR_LESS) $< $@

$(CARPETA_OBJETO)/productos.css: $(CARPETA_FUENTE)/productos.less \
	$(CARPETA_FUENTE)/general.less $(CARPETA_FUENTE)/encabezado.less $(CARPETA_FUENTE)/variables.less
	$(COMPILADOR_LESS) $< $@

$(CARPETA_OBJETO)/procesos.css: $(CARPETA_FUENTE)/procesos.less \
	$(CARPETA_FUENTE)/general.less $(CARPETA_FUENTE)/encabezado.less $(CARPETA_FUENTE)/variables.less
	$(COMPILADOR_LESS) $< $@

$(CARPETA_OBJETO)/contacto.css: $(CARPETA_FUENTE)/contacto.less \
	$(CARPETA_FUENTE)/general.less $(CARPETA_FUENTE)/encabezado.less $(CARPETA_FUENTE)/variables.less
	$(COMPILADOR_LESS) $< $@

$(CARPETA_OBJETO)/confirmacion_edad.css: $(CARPETA_FUENTE)/confirmacion_edad.less \
	$(CARPETA_FUENTE)/variables.less
	$(COMPILADOR_LESS) $< $@