gg.alert ("防封")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2D;2.2958874e-41;16384D;16384D::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, i in ipairs((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil))) do
  if i.flags == gg.TYPE_DWORD then
    i.value = "2.2958874039497803E-41"
    i.freeze = true
  end
end
gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.clearResults()
gg.clearList()
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, i in ipairs((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil))) do
  if i.flags == gg.TYPE_DWORD then
    i.value = "67109633"
    i.freeze = true
  end
end
gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, i in ipairs((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil))) do
  if i.flags == gg.TYPE_DWORD then
    i.value = "67109633"
    i.freeze = true
  end
end
gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133,378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, i in ipairs((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil))) do
  if i.flags == gg.TYPE_DWORD then
    i.value = "67109633"
    i.freeze = true
  end
end
gg.addListItems((gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70658~590336;67109377;67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("70658~590336", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(99999)
gg.editAll("67109633", gg.TYPE_DWORD)
gg.clearResults()
gg.clearList()
