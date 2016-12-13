--- gnupg.py.orig	2016-09-10 07:53:21 UTC
+++ gnupg.py
@@ -555,7 +555,7 @@ class Crypt(Verify, TextHandler):
         if key in ("ENC_TO", "USERID_HINT", "GOODMDC", "END_DECRYPTION",
                    "BEGIN_SIGNING", "NO_SECKEY", "ERROR", "NODATA", "PROGRESS",
                    "CARDCTRL", "BADMDC", "SC_OP_FAILURE", "SC_OP_SUCCESS",
-                   "PINENTRY_LAUNCHED"):
+                   "PINENTRY_LAUNCHED", "KEY_CONSIDERED"):
             # in the case of ERROR, this is because a more specific error
             # message will have come first
             if key == "NODATA":
@@ -605,7 +605,7 @@ class GenKey(object):
 
     def handle_status(self, key, value):
         if key in ("PROGRESS", "GOOD_PASSPHRASE", "NODATA", "KEY_NOT_CREATED",
-                   "PINENTRY_LAUNCHED"):
+                   "PINENTRY_LAUNCHED", "KEY_CONSIDERED"):
             pass
         elif key == "KEY_CREATED":
             (self.type,self.fingerprint) = value.split()
@@ -659,6 +659,7 @@ class Sign(TextHandler):
         self.type = None
         self.hash_algo = None
         self.fingerprint = None
+        self.status = None
 
     def __nonzero__(self):
         return self.fingerprint is not None
@@ -670,7 +671,7 @@ class Sign(TextHandler):
                    "GOOD_PASSPHRASE", "BEGIN_SIGNING", "CARDCTRL", "INV_SGNR",
                    "NO_SGNR", "MISSING_PASSPHRASE", "NEED_PASSPHRASE_PIN",
                    "SC_OP_FAILURE", "SC_OP_SUCCESS", "PROGRESS",
-                   "PINENTRY_LAUNCHED"):
+                   "PINENTRY_LAUNCHED", "KEY_CONSIDERED"):
             pass
         elif key in ("KEYEXPIRED", "SIGEXPIRED"):  # pragma: no cover
             self.status = 'key expired'
