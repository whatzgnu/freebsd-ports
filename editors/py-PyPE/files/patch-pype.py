$FreeBSD$

--- pype.py.orig	2017-05-11 23:24:45 UTC
+++ pype.py
@@ -1428,7 +1428,8 @@ class MainWindow(wx.Frame):
                 self.menubar.Check(DOCUMENT_LIST_OPTION_TO_ID2[document_options2], 1)
             self.menubar.Check(SHOW_RECENT, show_recent)
             self.menubar.Check(SHOW_SEARCH, show_search)
-            self.menubar.Check(MIDDLE_CL, MIDDLE_PASTE)
+            if sys.platform.startswith('win32'):
+                self.menubar.Check(MIDDLE_CL, MIDDLE_PASTE)
 
             for i in TOOLS_ENABLE_L:
                 if i[4] in window_management.enabled:
@@ -2234,7 +2235,7 @@ class MainWindow(wx.Frame):
     def OnSaveAs(self,e,upd=1):
         wnum, win = self.getNumWin(e)
 
-        dlg = wx.FileDialog(self, "Save file as...", current_path, "", "All files (*.*)|*.*", wx.SAVE|wx.OVERWRITE_PROMPT)
+        dlg = wx.FileDialog(self, "Save file as...", current_path, "", "All files (*.*)|*.*", wx.FD_SAVE|wx.FD_OVERWRITE_PROMPT)
         rslt = dlg.ShowModal()
         if rslt == wx.ID_OK:
             fn=dlg.GetFilename()
@@ -2304,7 +2305,7 @@ class MainWindow(wx.Frame):
 
     def OnOpen(self,e):
         wd = self.config.get('lastpath', current_path)
-        dlg = wx.FileDialog(self, "Choose a/some file(s)...", wd, "", wildcard, wx.OPEN|wx.MULTIPLE)
+        dlg = wx.FileDialog(self, "Choose a/some file(s)...", wd, "", wildcard, wx.FD_OPEN|wx.FD_MULTIPLE)
         if dlg.ShowModal() == wx.ID_OK:
             self.OnDrop(dlg.GetPaths())
             self.config['lp'] = dlg.GetDirectory()
@@ -2353,7 +2354,7 @@ class MainWindow(wx.Frame):
         if "lastopen" in self.config:
             self.OnDrop(self.config['lastopen'], 1)
     def AddSearchPath(self, e):
-        dlg = wx.DirDialog(self, "Choose a path", "", style=wx.DD_DEFAULT_STYLE|wx.DD_NEW_DIR_BUTTON)
+        dlg = wx.DirDialog(self, "Choose a path", "", style=wx.DD_DEFAULT_STYLE)
         if dlg.ShowModal() == wx.ID_OK:
             path = os.path.normcase(os.path.normpath(dlg.GetPath()))
             if not (path in self.config['modulepaths']) and not (path in sys.path):
@@ -3388,7 +3389,7 @@ class MainWindow(wx.Frame):
         dlg = wx.FileDialog(
             self, message="Choose a Python Interpreter", defaultDir=wd,
             defaultFile="", wildcard="All files (*.*)|*.*",
-            style=wx.OPEN|wx.HIDE_READONLY|wx.FILE_MUST_EXIST
+            style=wx.FD_OPEN|wx.FD_FILE_MUST_EXIST
         )
 
         x = interpreter.python_choices[:]
