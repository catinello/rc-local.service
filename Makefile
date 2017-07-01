IN = install
SVC = rc-local.service
RC = rc.local

install:
	$(IN) -m744 $(RC) $(DESTDIR)/etc
	$(IN) -m644 $(SVC) $(DESTDIR)/etc/systemd/system
	systemctl daemon-reload && systemctl enable rc-local.service

uninstall:
	systemctl disable rc-local.service
	$(RM) $(DESTDIR)/etc/$(RC)
	$(RM) $(DESTDIR)/etc/systemd/system/$(SVC)
	systemctl daemon-reload

.PHONY: install uninstall
