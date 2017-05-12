$FreeBSD$

--- plugins/help.py.orig	2012-08-12 23:05:53 UTC
+++ plugins/help.py
@@ -25,7 +25,7 @@ class MyHtmlWindow(html.HtmlWindow):
     def OnLinkClicked(self, link):
         a = link.GetHref()
         if a.startswith('#'):
-            self.base_OnLinkClicked(link)
+            super(MyHtmlWindow, self).OnLinkClicked(link)
         else:
             webbrowser.open(a)
     
