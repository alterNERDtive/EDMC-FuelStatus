all: clean zip

zipfile = "EDMC-FuelStatus.zip"
builddir = "./build"

clean:
	rm -f $(zipfile)
	rm -rf $(builddir)

zip:
	mkdir -p $(builddir)/FuelStatus
	cp *.py $(builddir)/FuelStatus
	cp *.md $(builddir)/FuelStatus
	cp LICENSE $(builddir)/FuelStatus
	cd $(builddir) && zip -r ../$(zipfile) *
