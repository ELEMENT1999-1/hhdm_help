---
url: https://help.hh-dm.com/tutorials/shared-images-attached-file/
---

On this pageDisplaying shared images via attached files

This article explains how to use attached file parameters to display a common image across multiple linked items (for example, displaying a car model picture within a setup or an item measurement).

noteThis workflow can be applied to different definitions to display a picture per car, per event, or per any other entity.

Add an attached file parameterâ

Add an attached file parameter to the parent definition (e.g., the car model definition).

Enable the Auto Download option to ensure all users see the picture automatically without needing to download it manually.

Create a custom view to upload the imageâ

Create a custom column profile linked to the car model definition

noteA CID could also be used.

Add a single attached file column link to the attached file created

Add a custom view using this custom column profile

File can be uploaded from this view

infoThe car model custom column is also used in the car view

Display the image in a CIDâ

Add a single attached file display to the CID configuration to view the picture.

Use Expression binding to resolve the correct path based on the parent definition of the CID.

Adjust the line height property to increase the displayed height of the picture.

noteIn a CGD, an image control can be used.
