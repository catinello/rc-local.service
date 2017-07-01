IN = install
SVC = rc-local.service
RC = rc.local

install:
	$(IN) -m744 $(RC) $(DESTDIR)/etc
	$(IN) -m644 $(SVC) $(DESTDIR)/etc/systemd/system
	systemctl daemon-reload && systemctl enable rc-local.service

uninstall:
	systemctl disable rc-local.service && systemctl daemon-reload
	$(RM) $(DESTDIR)/etc/$(RC)
	$(RM) $(DESTDIR)/etc/systemd/system/$(SVC)

.PHONY: install uninstall
