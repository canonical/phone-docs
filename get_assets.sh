#!/bin/sh


wget --output-document=/Users/peter/src/phone-docs/media/places-list.png https://developer.ubuntu.com/static/devportal_uploaded/83a3d51e-3b66-4934-8d36-49d205587fba-api/apps/qml/sdk-15.04.1/location-places-qml/images/places-list.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/83a3d51e-3b66-4934-8d36-49d205587fba-api\/apps\/qml\/sdk-15.04.1\/location-places-qml\/images\/places-list.png/..\/..\/media\/places-list.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/places-map.jpg https://developer.ubuntu.com/static/devportal_uploaded/1cf25225-6c8f-4d72-a945-5564b3fd0a7d-api/apps/qml/sdk-15.04.1/location-places-qml/images/places-map.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1cf25225-6c8f-4d72-a945-5564b3fd0a7d-api\/apps\/qml\/sdk-15.04.1\/location-places-qml\/images\/places-map.jpg/..\/..\/media\/places-map.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-map.png https://developer.ubuntu.com/static/devportal_uploaded/e9f72b88-8f7c-498f-99fd-ca18f7c3df2c-api/apps/qml/sdk-15.04.1/QtLocation.Map/images/api-map.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e9f72b88-8f7c-498f-99fd-ca18f7c3df2c-api\/apps\/qml\/sdk-15.04.1\/QtLocation.Map\/images\/api-map.png/..\/..\/media\/api-map.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mapcircle.png https://developer.ubuntu.com/static/devportal_uploaded/84ec85dd-71d4-4ef2-bbdc-ed2ff1cf5bc5-api/apps/qml/sdk-15.04.1/QtLocation.MapCircle/images/api-mapcircle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/84ec85dd-71d4-4ef2-bbdc-ed2ff1cf5bc5-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapCircle\/images\/api-mapcircle.png/..\/..\/media\/api-mapcircle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mappolygon.png https://developer.ubuntu.com/static/devportal_uploaded/29a2920b-1ce7-48db-96e5-c81cae609c77-api/apps/qml/sdk-15.04.1/QtLocation.MapPolygon/images/api-mappolygon.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/29a2920b-1ce7-48db-96e5-c81cae609c77-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapPolygon\/images\/api-mappolygon.png/..\/..\/media\/api-mappolygon.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mappolyline.png https://developer.ubuntu.com/static/devportal_uploaded/326be5b3-39db-447f-b29e-686b39f47fe5-api/apps/qml/sdk-15.04.1/QtLocation.MapPolyline/images/api-mappolyline.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/326be5b3-39db-447f-b29e-686b39f47fe5-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapPolyline\/images\/api-mappolyline.png/..\/..\/media\/api-mappolyline.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mapquickitem.png https://developer.ubuntu.com/static/devportal_uploaded/25dc5576-cab8-47b0-b5ad-283091110cc7-api/apps/qml/sdk-15.04.1/QtLocation.MapQuickItem/images/api-mapquickitem.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/25dc5576-cab8-47b0-b5ad-283091110cc7-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapQuickItem\/images\/api-mapquickitem.png/..\/..\/media\/api-mapquickitem.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mapquickitem-anchor.png https://developer.ubuntu.com/static/devportal_uploaded/b69ec52f-c5a9-4581-88e2-c819f40d97ba-api/apps/qml/sdk-15.04.1/QtLocation.MapQuickItem/images/api-mapquickitem-anchor.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b69ec52f-c5a9-4581-88e2-c819f40d97ba-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapQuickItem\/images\/api-mapquickitem-anchor.png/..\/..\/media\/api-mapquickitem-anchor.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-maprectangle.png https://developer.ubuntu.com/static/devportal_uploaded/bddd67c8-f5f1-4518-bb46-08d1bcbb8201-api/apps/qml/sdk-15.04.1/QtLocation.MapRectangle/images/api-maprectangle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bddd67c8-f5f1-4518-bb46-08d1bcbb8201-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapRectangle\/images\/api-maprectangle.png/..\/..\/media\/api-maprectangle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/example-mapviewer.png https://developer.ubuntu.com/static/devportal_uploaded/011bd6d2-c505-42c3-8044-175a014ac70f-api/apps/qml/sdk-15.04.1/qtlocation-mapviewer-example/images/example-mapviewer.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/011bd6d2-c505-42c3-8044-175a014ac70f-api\/apps\/qml\/sdk-15.04.1\/qtlocation-mapviewer-example\/images\/example-mapviewer.png/..\/..\/media\/example-mapviewer.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-places.png https://developer.ubuntu.com/static/devportal_uploaded/cbfbec21-e6e6-4201-b72d-0838c7b4ebaa-api/apps/qml/sdk-15.04.1/qtlocation-places-example/images/qml-places.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cbfbec21-e6e6-4201-b72d-0838c7b4ebaa-api\/apps\/qml\/sdk-15.04.1\/qtlocation-places-example\/images\/qml-places.png/..\/..\/media\/qml-places.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/places-list.png https://developer.ubuntu.com/static/devportal_uploaded/f87d87d6-a456-4cf4-a3e7-cbc4a562f964-api/apps/qml/sdk-15.04.1/qtlocation-places-list-example/images/places-list.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f87d87d6-a456-4cf4-a3e7-cbc4a562f964-api\/apps\/qml\/sdk-15.04.1\/qtlocation-places-list-example\/images\/places-list.png/..\/..\/media\/places-list.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/places-map.jpg https://developer.ubuntu.com/static/devportal_uploaded/666ee216-9e3a-41be-b553-7db4e8c25a94-api/apps/qml/sdk-15.04.1/qtlocation-places-map-example/images/places-map.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/666ee216-9e3a-41be-b553-7db4e8c25a94-api\/apps\/qml\/sdk-15.04.1\/qtlocation-places-map-example\/images\/places-map.jpg/..\/..\/media\/places-map.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/audiodevices.png https://developer.ubuntu.com/static/devportal_uploaded/a880761e-e28f-4f8e-97fe-7187c365844e-api/apps/qml/sdk-15.04.5/qtmultimedia-audiodevices-example/images/audiodevices.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a880761e-e28f-4f8e-97fe-7187c365844e-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-audiodevices-example\/images\/audiodevices.png/..\/..\/media\/audiodevices.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/audioinput-example.png https://developer.ubuntu.com/static/devportal_uploaded/83c84b47-ee05-4b0b-9cc5-ded8b1ee1429-api/apps/qml/sdk-15.04.5/qtmultimedia-audioinput-example/images/audioinput-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/83c84b47-ee05-4b0b-9cc5-ded8b1ee1429-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-audioinput-example\/images\/audioinput-example.png/..\/..\/media\/audioinput-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/audiooutput-example.png https://developer.ubuntu.com/static/devportal_uploaded/617786dc-edfc-44f6-b515-d0d6f44fca2f-api/apps/qml/sdk-15.04.5/qtmultimedia-audiooutput-example/images/audiooutput-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/617786dc-edfc-44f6-b515-d0d6f44fca2f-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-audiooutput-example\/images\/audiooutput-example.png/..\/..\/media\/audiooutput-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/audiorecorder.png https://developer.ubuntu.com/static/devportal_uploaded/1771678b-2e1b-470c-8dad-cdaea1249977-api/apps/qml/sdk-15.04.5/qtmultimedia-audiorecorder-example/images/audiorecorder.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1771678b-2e1b-470c-8dad-cdaea1249977-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-audiorecorder-example\/images\/audiorecorder.png/..\/..\/media\/audiorecorder.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-camera.png https://developer.ubuntu.com/static/devportal_uploaded/872c3f2e-23dd-4a95-9c72-857713b6d3e2-api/apps/qml/sdk-15.04.5/qtmultimedia-declarative-camera-example/images/qml-camera.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/872c3f2e-23dd-4a95-9c72-857713b6d3e2-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-declarative-camera-example\/images\/qml-camera.png/..\/..\/media\/qml-camera.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/spectrum-demo.png https://developer.ubuntu.com/static/devportal_uploaded/a8cd2971-95e8-4e30-ae25-16c1203c38ec-api/apps/qml/sdk-15.04.5/qtmultimedia-spectrum-example/images/spectrum-demo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a8cd2971-95e8-4e30-ae25-16c1203c38ec-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-spectrum-example\/images\/spectrum-demo.png/..\/..\/media\/spectrum-demo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideo-overlay.jpg https://developer.ubuntu.com/static/devportal_uploaded/ebe1868f-5c39-4732-a5fa-3fef1dc20d86-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideo-example/images/qmlvideo-overlay.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ebe1868f-5c39-4732-a5fa-3fef1dc20d86-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideo-example\/images\/qmlvideo-overlay.jpg/..\/..\/media\/qmlvideo-overlay.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideo-menu.jpg https://developer.ubuntu.com/static/devportal_uploaded/372bbfea-6679-49ef-be2b-a90f5fa57a1a-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideo-example/images/qmlvideo-menu.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/372bbfea-6679-49ef-be2b-a90f5fa57a1a-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideo-example\/images\/qmlvideo-menu.jpg/..\/..\/media\/qmlvideo-menu.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/video-qml-paint-rate.png https://developer.ubuntu.com/static/devportal_uploaded/2c25fbdd-f3a9-413e-ad0a-76e4ff0374ff-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideo-example/images/video-qml-paint-rate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2c25fbdd-f3a9-413e-ad0a-76e4ff0374ff-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideo-example\/images\/video-qml-paint-rate.png/..\/..\/media\/video-qml-paint-rate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-video-edgedetection.jpg https://developer.ubuntu.com/static/devportal_uploaded/60295aa3-b730-4e5f-9ad8-654f62475bcc-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-video-edgedetection.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/60295aa3-b730-4e5f-9ad8-654f62475bcc-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-video-edgedetection.jpg/..\/..\/media\/qmlvideofx-video-edgedetection.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-video-pagecurl.jpg https://developer.ubuntu.com/static/devportal_uploaded/38c42bb4-c5e2-4984-80e4-6f4cb8714454-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-video-pagecurl.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/38c42bb4-c5e2-4984-80e4-6f4cb8714454-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-video-pagecurl.jpg/..\/..\/media\/qmlvideofx-video-pagecurl.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-camera-glow.jpg https://developer.ubuntu.com/static/devportal_uploaded/fa5fa663-7adc-4cb6-8f9a-e8bca557191d-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-camera-glow.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fa5fa663-7adc-4cb6-8f9a-e8bca557191d-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-camera-glow.jpg/..\/..\/media\/qmlvideofx-camera-glow.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-camera-wobble.jpg https://developer.ubuntu.com/static/devportal_uploaded/8103f29f-1558-41f3-9502-4182e410ab75-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-camera-wobble.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8103f29f-1558-41f3-9502-4182e410ab75-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-camera-wobble.jpg/..\/..\/media\/qmlvideofx-camera-wobble.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-effects-menu.jpg https://developer.ubuntu.com/static/devportal_uploaded/0facc1e3-b7d2-4611-a07d-3ccc61096b05-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-effects-menu.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0facc1e3-b7d2-4611-a07d-3ccc61096b05-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-effects-menu.jpg/..\/..\/media\/qmlvideofx-effects-menu.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/video-qml-paint-rate.png https://developer.ubuntu.com/static/devportal_uploaded/016ea051-6d2d-4b31-88a4-16e574de0ece-api/apps/qml/sdk-15.04.5/qtmultimedia-video-qmlvideofx-example/images/video-qml-paint-rate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/016ea051-6d2d-4b31-88a4-16e574de0ece-api\/apps\/qml\/sdk-15.04.5\/qtmultimedia-video-qmlvideofx-example\/images\/video-qml-paint-rate.png/..\/..\/media\/video-qml-paint-rate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/radio-example.png https://developer.ubuntu.com/static/devportal_uploaded/fed08b9a-dc66-4e8b-ad23-24275c7d67d7-api/apps/qml/sdk-15.04.5/radiooverview/images/radio-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fed08b9a-dc66-4e8b-ad23-24275c7d67d7-api\/apps\/qml\/sdk-15.04.5\/radiooverview\/images\/radio-example.png/..\/..\/media\/radio-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-radio-example.png https://developer.ubuntu.com/static/devportal_uploaded/d8207913-3dbc-43f6-b9f9-0b67e3488b48-api/apps/qml/sdk-15.04.5/radiooverview/images/declarative-radio-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d8207913-3dbc-43f6-b9f9-0b67e3488b48-api\/apps\/qml\/sdk-15.04.5\/radiooverview\/images\/declarative-radio-example.png/..\/..\/media\/declarative-radio-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listmodel.png https://developer.ubuntu.com/static/devportal_uploaded/f2a83bc6-9968-4e90-9079-69462688ce49-api/apps/qml/sdk-15.04.5/QtQml.ListModel/images/listmodel.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f2a83bc6-9968-4e90-9079-69462688ce49-api\/apps\/qml\/sdk-15.04.5\/QtQml.ListModel\/images\/listmodel.png/..\/..\/media\/listmodel.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listmodel-nested.png https://developer.ubuntu.com/static/devportal_uploaded/12c5abb4-a255-4b62-a73e-f760c4845a05-api/apps/qml/sdk-15.04.5/QtQml.ListModel/images/listmodel-nested.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/12c5abb4-a255-4b62-a73e-f760c4845a05-api\/apps\/qml\/sdk-15.04.5\/QtQml.ListModel\/images\/listmodel-nested.png/..\/..\/media\/listmodel-nested.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualitemmodel.png https://developer.ubuntu.com/static/devportal_uploaded/238e28cc-ec83-4a27-a127-02d7deef747d-api/apps/qml/sdk-15.04.5/QtQml.ObjectModel/images/visualitemmodel.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/238e28cc-ec83-4a27-a127-02d7deef747d-api\/apps\/qml\/sdk-15.04.5\/QtQml.ObjectModel\/images\/visualitemmodel.png/..\/..\/media\/visualitemmodel.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-button.png https://developer.ubuntu.com/static/devportal_uploaded/2013b218-b4f5-4bd5-98de-0adc0eba3030-api/apps/qml/sdk-15.04.5/qmlstatemachine/images/statemachine-button.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2013b218-b4f5-4bd5-98de-0adc0eba3030-api\/apps\/qml\/sdk-15.04.5\/qmlstatemachine\/images\/statemachine-button.png/..\/..\/media\/statemachine-button.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-button-nested.png https://developer.ubuntu.com/static/devportal_uploaded/e58e1e91-1b11-4ea6-aa90-907111de129c-api/apps/qml/sdk-15.04.5/qmlstatemachine/images/statemachine-button-nested.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e58e1e91-1b11-4ea6-aa90-907111de129c-api\/apps\/qml\/sdk-15.04.5\/qmlstatemachine\/images\/statemachine-button-nested.png/..\/..\/media\/statemachine-button-nested.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-button-history.png https://developer.ubuntu.com/static/devportal_uploaded/92007ee9-6ecd-4fc1-9dc9-4aefca92d3ab-api/apps/qml/sdk-15.04.5/qmlstatemachine/images/statemachine-button-history.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/92007ee9-6ecd-4fc1-9dc9-4aefca92d3ab-api\/apps\/qml\/sdk-15.04.5\/qmlstatemachine\/images\/statemachine-button-history.png/..\/..\/media\/statemachine-button-history.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-nonparallel.png https://developer.ubuntu.com/static/devportal_uploaded/ac59d433-72e5-4acd-a3fa-4b79febd2623-api/apps/qml/sdk-15.04.5/qmlstatemachine/images/statemachine-nonparallel.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ac59d433-72e5-4acd-a3fa-4b79febd2623-api\/apps\/qml\/sdk-15.04.5\/qmlstatemachine\/images\/statemachine-nonparallel.png/..\/..\/media\/statemachine-nonparallel.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-parallel.png https://developer.ubuntu.com/static/devportal_uploaded/42978255-2ea6-489c-9f27-56b40e91acbb-api/apps/qml/sdk-15.04.5/qmlstatemachine/images/statemachine-parallel.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/42978255-2ea6-489c-9f27-56b40e91acbb-api\/apps\/qml\/sdk-15.04.5\/qmlstatemachine\/images\/statemachine-parallel.png/..\/..\/media\/statemachine-parallel.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-finished.png https://developer.ubuntu.com/static/devportal_uploaded/32ba3330-c032-428b-9959-b06b37be562f-api/apps/qml/sdk-15.04.5/qmlstatemachine/images/statemachine-finished.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/32ba3330-c032-428b-9959-b06b37be562f-api\/apps\/qml\/sdk-15.04.5\/qmlstatemachine\/images\/statemachine-finished.png/..\/..\/media\/statemachine-finished.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-rect_tint.png https://developer.ubuntu.com/static/devportal_uploaded/4b1d9d03-2e94-4c07-a35a-0d07273a8119-api/apps/qml/sdk-15.04.5/QtQml.Qt/images/declarative-rect_tint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4b1d9d03-2e94-4c07-a35a-0d07273a8119-api\/apps\/qml\/sdk-15.04.5\/QtQml.Qt\/images\/declarative-rect_tint.png/..\/..\/media\/declarative-rect_tint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/documents-definetypes-simple.png https://developer.ubuntu.com/static/devportal_uploaded/07c093f7-4941-4175-9de1-c8bd0e91076e-api/apps/qml/sdk-15.04.5/qtqml-documents-definetypes/images/documents-definetypes-simple.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/07c093f7-4941-4175-9de1-c8bd0e91076e-api\/apps\/qml\/sdk-15.04.5\/qtqml-documents-definetypes\/images\/documents-definetypes-simple.png/..\/..\/media\/documents-definetypes-simple.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/documents-definetypes-attributes.png https://developer.ubuntu.com/static/devportal_uploaded/f419d3f2-eb27-4512-b941-c01fbfb093ce-api/apps/qml/sdk-15.04.5/qtqml-documents-definetypes/images/documents-definetypes-attributes.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f419d3f2-eb27-4512-b941-c01fbfb093ce-api\/apps\/qml\/sdk-15.04.5\/qtqml-documents-definetypes\/images\/documents-definetypes-attributes.png/..\/..\/media\/documents-definetypes-attributes.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/button-types.png https://developer.ubuntu.com/static/devportal_uploaded/a3fd3228-57ad-4aa3-ba24-ffa21eb87994-api/apps/qml/sdk-15.04.5/qtqml-documents-topic/images/button-types.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a3fd3228-57ad-4aa3-ba24-ffa21eb87994-api\/apps\/qml\/sdk-15.04.5\/qtqml-documents-topic\/images\/button-types.png/..\/..\/media\/button-types.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-dynamicscene-example.png https://developer.ubuntu.com/static/devportal_uploaded/d02abe5a-e86b-457e-8f68-b2e03784a71c-api/apps/qml/sdk-15.04.5/qtqml-dynamicscene-example/images/qml-dynamicscene-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d02abe5a-e86b-457e-8f68-b2e03784a71c-api\/apps\/qml\/sdk-15.04.5\/qtqml-dynamicscene-example\/images\/qml-dynamicscene-example.png/..\/..\/media\/qml-dynamicscene-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-i18n-example.png https://developer.ubuntu.com/static/devportal_uploaded/ad747330-592d-4426-8733-84826af16633-api/apps/qml/sdk-15.04.5/qtqml-qml-i18n-example/images/qml-i18n-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ad747330-592d-4426-8733-84826af16633-api\/apps\/qml\/sdk-15.04.5\/qtqml-qml-i18n-example\/images\/qml-i18n-example.png/..\/..\/media\/qml-i18n-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-plugins-example.png https://developer.ubuntu.com/static/devportal_uploaded/936fc77d-711a-4116-a9a2-815bb5b6870f-api/apps/qml/sdk-15.04.5/qtqml-qmlextensionplugins-example/images/qml-plugins-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/936fc77d-711a-4116-a9a2-815bb5b6870f-api\/apps\/qml\/sdk-15.04.5\/qtqml-qmlextensionplugins-example\/images\/qml-plugins-example.png/..\/..\/media\/qml-plugins-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtqml-syntax-basics-object-declaration.png https://developer.ubuntu.com/static/devportal_uploaded/fcdddfce-6732-4e0b-906b-9d6a1f93ed11-api/apps/qml/sdk-15.04.5/qtqml-syntax-basics/images/qtqml-syntax-basics-object-declaration.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fcdddfce-6732-4e0b-906b-9d6a1f93ed11-api\/apps\/qml\/sdk-15.04.5\/qtqml-syntax-basics\/images\/qtqml-syntax-basics-object-declaration.png/..\/..\/media\/qtqml-syntax-basics-object-declaration.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/extending-tutorial-chapter1.png https://developer.ubuntu.com/static/devportal_uploaded/987efa45-2985-4f28-b4dc-9e9f350412cb-api/apps/qml/sdk-15.04.5/qtqml-tutorials-extending-qml-example/images/extending-tutorial-chapter1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/987efa45-2985-4f28-b4dc-9e9f350412cb-api\/apps\/qml\/sdk-15.04.5\/qtqml-tutorials-extending-qml-example\/images\/extending-tutorial-chapter1.png/..\/..\/media\/extending-tutorial-chapter1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/extending-tutorial-chapter2.png https://developer.ubuntu.com/static/devportal_uploaded/d68bc3d2-5f59-49bc-8002-62b32b7a0e7d-api/apps/qml/sdk-15.04.5/qtqml-tutorials-extending-qml-example/images/extending-tutorial-chapter2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d68bc3d2-5f59-49bc-8002-62b32b7a0e7d-api\/apps\/qml\/sdk-15.04.5\/qtqml-tutorials-extending-qml-example\/images\/extending-tutorial-chapter2.png/..\/..\/media\/extending-tutorial-chapter2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/extending-tutorial-chapter3.png https://developer.ubuntu.com/static/devportal_uploaded/f2f73a6c-f154-4987-bef4-bce267d31e34-api/apps/qml/sdk-15.04.5/qtqml-tutorials-extending-qml-example/images/extending-tutorial-chapter3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f2f73a6c-f154-4987-bef4-bce267d31e34-api\/apps\/qml\/sdk-15.04.5\/qtqml-tutorials-extending-qml-example\/images\/extending-tutorial-chapter3.png/..\/..\/media\/extending-tutorial-chapter3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/extending-tutorial-chapter5.png https://developer.ubuntu.com/static/devportal_uploaded/11533c3f-5ad2-4d1b-86d0-109c4d3e0854-api/apps/qml/sdk-15.04.5/qtqml-tutorials-extending-qml-example/images/extending-tutorial-chapter5.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/11533c3f-5ad2-4d1b-86d0-109c4d3e0854-api\/apps\/qml\/sdk-15.04.5\/qtqml-tutorials-extending-qml-example\/images\/extending-tutorial-chapter5.png/..\/..\/media\/extending-tutorial-chapter5.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-xmlhttprequest-example.png https://developer.ubuntu.com/static/devportal_uploaded/cbbf3de8-8e5a-40fb-b2ba-f8e1de2f392e-api/apps/qml/sdk-15.04.5/qtqml-xmlhttprequest-example/images/qml-xmlhttprequest-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cbbf3de8-8e5a-40fb-b2ba-f8e1de2f392e-api\/apps\/qml\/sdk-15.04.5\/qtqml-xmlhttprequest-example\/images\/qml-xmlhttprequest-example.png/..\/..\/media\/qml-xmlhttprequest-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/anchorchanges.png https://developer.ubuntu.com/static/devportal_uploaded/872e06df-0c0f-49e9-be87-b94c500532b3-api/apps/qml/sdk-15.04.5/QtQuick.AnchorChanges/images/anchorchanges.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/872e06df-0c0f-49e9-be87-b94c500532b3-api\/apps\/qml\/sdk-15.04.5\/QtQuick.AnchorChanges\/images\/anchorchanges.png/..\/..\/media\/anchorchanges.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/animatedimageitem.gif https://developer.ubuntu.com/static/devportal_uploaded/ab1028a8-0d54-49d0-b7c4-30c3f25e2f3a-api/apps/qml/sdk-15.04.5/QtQuick.AnimatedImage/images/animatedimageitem.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ab1028a8-0d54-49d0-b7c4-30c3f25e2f3a-api\/apps\/qml\/sdk-15.04.5\/QtQuick.AnimatedImage\/images\/animatedimageitem.gif/..\/..\/media\/animatedimageitem.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-linear.png https://developer.ubuntu.com/static/devportal_uploaded/7c1295d2-b52d-4ba4-a669-74d46e22e2ac-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-linear.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7c1295d2-b52d-4ba4-a669-74d46e22e2ac-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-linear.png/..\/..\/media\/qeasingcurve-linear.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquad.png https://developer.ubuntu.com/static/devportal_uploaded/a9704118-45e6-4bd3-bc5b-341eb0324a5f-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a9704118-45e6-4bd3-bc5b-341eb0324a5f-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inquad.png/..\/..\/media\/qeasingcurve-inquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquad.png https://developer.ubuntu.com/static/devportal_uploaded/6e59dbc2-6ac1-4a47-ae05-f3a3501b1a95-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6e59dbc2-6ac1-4a47-ae05-f3a3501b1a95-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outquad.png/..\/..\/media\/qeasingcurve-outquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquad.png https://developer.ubuntu.com/static/devportal_uploaded/05e06632-a17c-406b-8899-064e55db1379-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/05e06632-a17c-406b-8899-064e55db1379-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutquad.png/..\/..\/media\/qeasingcurve-inoutquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquad.png https://developer.ubuntu.com/static/devportal_uploaded/bbd890ac-0427-494d-a4bf-a9e227820067-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bbd890ac-0427-494d-a4bf-a9e227820067-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outinquad.png/..\/..\/media\/qeasingcurve-outinquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-incubic.png https://developer.ubuntu.com/static/devportal_uploaded/f96b0b47-d995-4709-84f6-3f39c340cf96-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-incubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f96b0b47-d995-4709-84f6-3f39c340cf96-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-incubic.png/..\/..\/media\/qeasingcurve-incubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outcubic.png https://developer.ubuntu.com/static/devportal_uploaded/e6d282e0-ae38-429a-9188-20e4f0a99031-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e6d282e0-ae38-429a-9188-20e4f0a99031-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outcubic.png/..\/..\/media\/qeasingcurve-outcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutcubic.png https://developer.ubuntu.com/static/devportal_uploaded/27900bcc-9501-4d32-a4c2-9fbd279274c2-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/27900bcc-9501-4d32-a4c2-9fbd279274c2-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutcubic.png/..\/..\/media\/qeasingcurve-inoutcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outincubic.png https://developer.ubuntu.com/static/devportal_uploaded/cf65489e-5dd7-4bef-980d-86f94b052669-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outincubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cf65489e-5dd7-4bef-980d-86f94b052669-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outincubic.png/..\/..\/media\/qeasingcurve-outincubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquart.png https://developer.ubuntu.com/static/devportal_uploaded/0dfd71af-b9e4-4946-ba98-bc1bd9d1bd84-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0dfd71af-b9e4-4946-ba98-bc1bd9d1bd84-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inquart.png/..\/..\/media\/qeasingcurve-inquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquart.png https://developer.ubuntu.com/static/devportal_uploaded/8b3995be-2501-4f57-af8c-72122aa6bab6-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8b3995be-2501-4f57-af8c-72122aa6bab6-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outquart.png/..\/..\/media\/qeasingcurve-outquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquart.png https://developer.ubuntu.com/static/devportal_uploaded/d8c1053a-f46b-4c57-b0a6-8262c680906f-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d8c1053a-f46b-4c57-b0a6-8262c680906f-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutquart.png/..\/..\/media\/qeasingcurve-inoutquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquart.png https://developer.ubuntu.com/static/devportal_uploaded/45971948-4073-4105-af26-d4a18ce12578-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/45971948-4073-4105-af26-d4a18ce12578-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outinquart.png/..\/..\/media\/qeasingcurve-outinquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquint.png https://developer.ubuntu.com/static/devportal_uploaded/18b53654-63a7-4fe4-9bd5-b16e2e087fd0-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/18b53654-63a7-4fe4-9bd5-b16e2e087fd0-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inquint.png/..\/..\/media\/qeasingcurve-inquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquint.png https://developer.ubuntu.com/static/devportal_uploaded/e1f04385-ede4-40e8-80d5-221d3f679aaf-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e1f04385-ede4-40e8-80d5-221d3f679aaf-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outquint.png/..\/..\/media\/qeasingcurve-outquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquint.png https://developer.ubuntu.com/static/devportal_uploaded/480c8200-684e-4615-98d7-2986fd4b3e13-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/480c8200-684e-4615-98d7-2986fd4b3e13-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutquint.png/..\/..\/media\/qeasingcurve-inoutquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquint.png https://developer.ubuntu.com/static/devportal_uploaded/a09e2510-022d-4aaa-9129-f98eaa476058-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a09e2510-022d-4aaa-9129-f98eaa476058-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outinquint.png/..\/..\/media\/qeasingcurve-outinquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-insine.png https://developer.ubuntu.com/static/devportal_uploaded/d7105fc2-51dc-4f4b-991d-307bcadc0f25-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-insine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d7105fc2-51dc-4f4b-991d-307bcadc0f25-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-insine.png/..\/..\/media\/qeasingcurve-insine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outsine.png https://developer.ubuntu.com/static/devportal_uploaded/1cfec624-3fbe-4734-bdb7-5a5f52581adc-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1cfec624-3fbe-4734-bdb7-5a5f52581adc-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outsine.png/..\/..\/media\/qeasingcurve-outsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutsine.png https://developer.ubuntu.com/static/devportal_uploaded/2cddc989-5b6f-41a1-ba49-6be6aa401d98-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2cddc989-5b6f-41a1-ba49-6be6aa401d98-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutsine.png/..\/..\/media\/qeasingcurve-inoutsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinsine.png https://developer.ubuntu.com/static/devportal_uploaded/dd929a98-ffab-480b-85a5-4cf28e3cabc0-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dd929a98-ffab-480b-85a5-4cf28e3cabc0-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outinsine.png/..\/..\/media\/qeasingcurve-outinsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inexpo.png https://developer.ubuntu.com/static/devportal_uploaded/6c8733b0-04aa-402e-92df-b20be9eafd11-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6c8733b0-04aa-402e-92df-b20be9eafd11-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inexpo.png/..\/..\/media\/qeasingcurve-inexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outexpo.png https://developer.ubuntu.com/static/devportal_uploaded/99f910f8-1f60-465b-ab1a-53dfab0c4543-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/99f910f8-1f60-465b-ab1a-53dfab0c4543-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outexpo.png/..\/..\/media\/qeasingcurve-outexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutexpo.png https://developer.ubuntu.com/static/devportal_uploaded/6fd7306f-0842-43e2-aa39-56a177f784b6-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6fd7306f-0842-43e2-aa39-56a177f784b6-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutexpo.png/..\/..\/media\/qeasingcurve-inoutexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinexpo.png https://developer.ubuntu.com/static/devportal_uploaded/f7f17ec4-9575-4020-ac19-e952f564a544-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f7f17ec4-9575-4020-ac19-e952f564a544-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outinexpo.png/..\/..\/media\/qeasingcurve-outinexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-incirc.png https://developer.ubuntu.com/static/devportal_uploaded/cd885c69-fa05-4888-9505-1ccf90f4445d-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-incirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cd885c69-fa05-4888-9505-1ccf90f4445d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-incirc.png/..\/..\/media\/qeasingcurve-incirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outcirc.png https://developer.ubuntu.com/static/devportal_uploaded/ec87d6a2-490b-42c4-9671-be0907033429-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outcirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ec87d6a2-490b-42c4-9671-be0907033429-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outcirc.png/..\/..\/media\/qeasingcurve-outcirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutcirc.png https://developer.ubuntu.com/static/devportal_uploaded/afc44783-c232-43aa-b827-78c86cbb287e-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutcirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/afc44783-c232-43aa-b827-78c86cbb287e-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutcirc.png/..\/..\/media\/qeasingcurve-inoutcirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outincirc.png https://developer.ubuntu.com/static/devportal_uploaded/4cb6e8c8-9072-4db4-8be3-acc6cd050fff-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outincirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4cb6e8c8-9072-4db4-8be3-acc6cd050fff-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outincirc.png/..\/..\/media\/qeasingcurve-outincirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inelastic.png https://developer.ubuntu.com/static/devportal_uploaded/c6ce680e-717e-4d0d-afc6-5558484c76a1-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c6ce680e-717e-4d0d-afc6-5558484c76a1-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inelastic.png/..\/..\/media\/qeasingcurve-inelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outelastic.png https://developer.ubuntu.com/static/devportal_uploaded/336331b3-1f4b-4584-8d5c-dfd10dbe2c2b-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/336331b3-1f4b-4584-8d5c-dfd10dbe2c2b-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outelastic.png/..\/..\/media\/qeasingcurve-outelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutelastic.png https://developer.ubuntu.com/static/devportal_uploaded/2c6f3ee1-b74f-4d2d-bf3f-83d3b3f59090-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2c6f3ee1-b74f-4d2d-bf3f-83d3b3f59090-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutelastic.png/..\/..\/media\/qeasingcurve-inoutelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinelastic.png https://developer.ubuntu.com/static/devportal_uploaded/53c42afa-d8bf-4b98-91b4-1f7e056e8a17-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/53c42afa-d8bf-4b98-91b4-1f7e056e8a17-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outinelastic.png/..\/..\/media\/qeasingcurve-outinelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inback.png https://developer.ubuntu.com/static/devportal_uploaded/57192e90-e90a-42f8-b436-03d90aff2b5e-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/57192e90-e90a-42f8-b436-03d90aff2b5e-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inback.png/..\/..\/media\/qeasingcurve-inback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outback.png https://developer.ubuntu.com/static/devportal_uploaded/4f4b429f-92b1-443b-affb-2a5d50ea72b5-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4f4b429f-92b1-443b-affb-2a5d50ea72b5-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outback.png/..\/..\/media\/qeasingcurve-outback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutback.png https://developer.ubuntu.com/static/devportal_uploaded/8e2ef721-4c4b-430c-8b36-96583e3bd248-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8e2ef721-4c4b-430c-8b36-96583e3bd248-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutback.png/..\/..\/media\/qeasingcurve-inoutback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinback.png https://developer.ubuntu.com/static/devportal_uploaded/5889f231-edbd-403f-bb6b-08c9ca09a38c-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5889f231-edbd-403f-bb6b-08c9ca09a38c-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outinback.png/..\/..\/media\/qeasingcurve-outinback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inbounce.png https://developer.ubuntu.com/static/devportal_uploaded/a86cdad8-dde9-4970-9dbb-acb4e669ad74-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a86cdad8-dde9-4970-9dbb-acb4e669ad74-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inbounce.png/..\/..\/media\/qeasingcurve-inbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outbounce.png https://developer.ubuntu.com/static/devportal_uploaded/eed29d6e-67cf-4eaf-a919-cf01b0f7feb1-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/eed29d6e-67cf-4eaf-a919-cf01b0f7feb1-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outbounce.png/..\/..\/media\/qeasingcurve-outbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutbounce.png https://developer.ubuntu.com/static/devportal_uploaded/46aad372-e0b9-4165-ad81-6928a5969520-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-inoutbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/46aad372-e0b9-4165-ad81-6928a5969520-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-inoutbounce.png/..\/..\/media\/qeasingcurve-inoutbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinbounce.png https://developer.ubuntu.com/static/devportal_uploaded/e5e6b926-29bf-4b95-ab76-5ebb5d5f0d7a-api/apps/qml/sdk-15.04.5/QtQuick.Animator/images/qeasingcurve-outinbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e5e6b926-29bf-4b95-ab76-5ebb5d5f0d7a-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Animator\/images\/qeasingcurve-outinbounce.png/..\/..\/media\/qeasingcurve-outinbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-scalegrid.png https://developer.ubuntu.com/static/devportal_uploaded/1d26ce11-a3e5-4e2b-af00-43db4ca6936d-api/apps/qml/sdk-15.04.5/QtQuick.BorderImage/images/declarative-scalegrid.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1d26ce11-a3e5-4e2b-af00-43db4ca6936d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.BorderImage\/images\/declarative-scalegrid.png/..\/..\/media\/declarative-scalegrid.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-borderimage-normal-image.png https://developer.ubuntu.com/static/devportal_uploaded/c803278c-5be8-4739-b9c7-7a28861d101b-api/apps/qml/sdk-15.04.5/QtQuick.BorderImage/images/qml-borderimage-normal-image.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c803278c-5be8-4739-b9c7-7a28861d101b-api\/apps\/qml\/sdk-15.04.5\/QtQuick.BorderImage\/images\/qml-borderimage-normal-image.png/..\/..\/media\/qml-borderimage-normal-image.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-borderimage-scaled.png https://developer.ubuntu.com/static/devportal_uploaded/331357ac-8804-45f3-bd0f-2da956a27cf7-api/apps/qml/sdk-15.04.5/QtQuick.BorderImage/images/qml-borderimage-scaled.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/331357ac-8804-45f3-bd0f-2da956a27cf7-api\/apps\/qml\/sdk-15.04.5\/QtQuick.BorderImage\/images\/qml-borderimage-scaled.png/..\/..\/media\/qml-borderimage-scaled.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-borderimage-tiled.png https://developer.ubuntu.com/static/devportal_uploaded/2c7becd2-af96-4c65-93e1-75638ef64c99-api/apps/qml/sdk-15.04.5/QtQuick.BorderImage/images/qml-borderimage-tiled.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2c7becd2-af96-4c65-93e1-75638ef64c99-api\/apps\/qml\/sdk-15.04.5\/QtQuick.BorderImage\/images\/qml-borderimage-tiled.png/..\/..\/media\/qml-borderimage-tiled.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-scalegrid.png https://developer.ubuntu.com/static/devportal_uploaded/5288b858-14c0-4785-ae02-26b5d620744b-api/apps/qml/sdk-15.04.5/QtQuick.BorderImage/images/declarative-scalegrid.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5288b858-14c0-4785-ae02-26b5d620744b-api\/apps\/qml\/sdk-15.04.5\/QtQuick.BorderImage\/images\/declarative-scalegrid.png/..\/..\/media\/declarative-scalegrid.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/verticalpositioner_example.png https://developer.ubuntu.com/static/devportal_uploaded/bdc4675f-b9ca-4dc9-8472-ce395659529d-api/apps/qml/sdk-15.04.5/QtQuick.Column/images/verticalpositioner_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bdc4675f-b9ca-4dc9-8472-ce395659529d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Column\/images\/verticalpositioner_example.png/..\/..\/media\/verticalpositioner_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/verticalpositioner_transition.gif https://developer.ubuntu.com/static/devportal_uploaded/d5abc49d-0039-46dd-89be-ffb36291cce7-api/apps/qml/sdk-15.04.5/QtQuick.Column/images/verticalpositioner_transition.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d5abc49d-0039-46dd-89be-ffb36291cce7-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Column\/images\/verticalpositioner_transition.gif/..\/..\/media\/verticalpositioner_transition.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-context.gif https://developer.ubuntu.com/static/devportal_uploaded/4f6061bc-d5b3-4f89-9f10-68350525d3ea-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-context.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4f6061bc-d5b3-4f89-9f10-68350525d3ea-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-context.gif/..\/..\/media\/qml-item-canvas-context.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-startAngle.png https://developer.ubuntu.com/static/devportal_uploaded/f2d6ff4d-9da8-4b4c-bc1c-89aa1a5cd26b-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-startAngle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f2d6ff4d-9da8-4b4c-bc1c-89aa1a5cd26b-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-startAngle.png/..\/..\/media\/qml-item-canvas-startAngle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-arcTo.png https://developer.ubuntu.com/static/devportal_uploaded/54e08c03-485c-472a-a041-ae8ab5f23a1f-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-arcTo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/54e08c03-485c-472a-a041-ae8ab5f23a1f-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-arcTo.png/..\/..\/media\/qml-item-canvas-arcTo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-bezierCurveTo.png https://developer.ubuntu.com/static/devportal_uploaded/d1c50ba5-efe9-4fcf-8ec0-ef83e690323d-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-bezierCurveTo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d1c50ba5-efe9-4fcf-8ec0-ef83e690323d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-bezierCurveTo.png/..\/..\/media\/qml-item-canvas-bezierCurveTo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-clip-complex.png https://developer.ubuntu.com/static/devportal_uploaded/32724159-7645-4ded-8610-ceeb18a1ef54-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-clip-complex.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/32724159-7645-4ded-8610-ceeb18a1ef54-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-clip-complex.png/..\/..\/media\/qml-item-canvas-clip-complex.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-rotate.png https://developer.ubuntu.com/static/devportal_uploaded/b3512c8c-fbfa-44d1-ace6-3a4b6067093a-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-rotate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b3512c8c-fbfa-44d1-ace6-3a4b6067093a-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-rotate.png/..\/..\/media\/qml-item-canvas-rotate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-math-rotate.png https://developer.ubuntu.com/static/devportal_uploaded/34a6546d-7720-4829-9c8e-36aa3f05c21a-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-math-rotate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/34a6546d-7720-4829-9c8e-36aa3f05c21a-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-math-rotate.png/..\/..\/media\/qml-item-canvas-math-rotate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-scale.png https://developer.ubuntu.com/static/devportal_uploaded/f26fd1db-6add-4828-8519-13a1b644505d-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-scale.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f26fd1db-6add-4828-8519-13a1b644505d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-scale.png/..\/..\/media\/qml-item-canvas-scale.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-math.png https://developer.ubuntu.com/static/devportal_uploaded/13d8f29b-e4fc-46c0-b20e-4d3c52e1f9d9-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-math.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/13d8f29b-e4fc-46c0-b20e-4d3c52e1f9d9-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-math.png/..\/..\/media\/qml-item-canvas-math.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-scalex.png https://developer.ubuntu.com/static/devportal_uploaded/dc323c2e-57ea-4c5b-aadb-6debf9de398c-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-scalex.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dc323c2e-57ea-4c5b-aadb-6debf9de398c-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-scalex.png/..\/..\/media\/qml-item-canvas-scalex.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-skewx.png https://developer.ubuntu.com/static/devportal_uploaded/b60bd891-de63-4109-b03c-8ca683f199a3-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-skewx.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b60bd891-de63-4109-b03c-8ca683f199a3-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-skewx.png/..\/..\/media\/qml-item-canvas-skewx.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-translate.png https://developer.ubuntu.com/static/devportal_uploaded/6e4ceb9e-df35-4632-9b38-d51185c38cf5-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-translate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6e4ceb9e-df35-4632-9b38-d51185c38cf5-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-translate.png/..\/..\/media\/qml-item-canvas-translate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-skewy.png https://developer.ubuntu.com/static/devportal_uploaded/291ce2ce-f7a9-4c6b-b91e-7b66e7f370e1-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-skewy.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/291ce2ce-f7a9-4c6b-b91e-7b66e7f370e1-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-skewy.png/..\/..\/media\/qml-item-canvas-skewy.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-scaley.png https://developer.ubuntu.com/static/devportal_uploaded/3978c0b5-d3e7-49a3-9d43-7d063bf8e5de-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-scaley.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3978c0b5-d3e7-49a3-9d43-7d063bf8e5de-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-scaley.png/..\/..\/media\/qml-item-canvas-scaley.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-translatey.png https://developer.ubuntu.com/static/devportal_uploaded/2863bf15-1510-4e85-9d54-7c5b472a8549-api/apps/qml/sdk-15.04.5/QtQuick.Context2D/images/qml-item-canvas-translatey.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2863bf15-1510-4e85-9d54-7c5b472a8549-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Context2D\/images\/qml-item-canvas-translatey.png/..\/..\/media\/qml-item-canvas-translatey.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/flipable.gif https://developer.ubuntu.com/static/devportal_uploaded/09da3d68-eba9-4639-8c21-8f8648af9974-api/apps/qml/sdk-15.04.5/QtQuick.Flipable/images/flipable.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/09da3d68-eba9-4639-8c21-8f8648af9974-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Flipable\/images\/flipable.gif/..\/..\/media\/flipable.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/flickable.gif https://developer.ubuntu.com/static/devportal_uploaded/1041e547-cde8-42f8-a6f7-2e343a3ccb46-api/apps/qml/sdk-15.04.5/QtQuick.Flickable/images/flickable.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1041e547-cde8-42f8-a6f7-2e343a3ccb46-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Flickable\/images\/flickable.gif/..\/..\/media\/flickable.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/flickable-rebound.gif https://developer.ubuntu.com/static/devportal_uploaded/fd6ce376-3b69-40cd-b583-5bb8358e8cc8-api/apps/qml/sdk-15.04.5/QtQuick.Flickable/images/flickable-rebound.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fd6ce376-3b69-40cd-b583-5bb8358e8cc8-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Flickable\/images\/flickable-rebound.gif/..\/..\/media\/flickable-rebound.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-flow-snippet.png https://developer.ubuntu.com/static/devportal_uploaded/c2de63e7-591e-4d55-8ef0-376249189884-api/apps/qml/sdk-15.04.5/QtQuick.Flow/images/qml-flow-snippet.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c2de63e7-591e-4d55-8ef0-376249189884-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Flow\/images\/qml-flow-snippet.png/..\/..\/media\/qml-flow-snippet.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-gradient.png https://developer.ubuntu.com/static/devportal_uploaded/72eac74e-0961-47f9-be8d-ef2e3aa156f5-api/apps/qml/sdk-15.04.5/QtQuick.Gradient/images/qml-gradient.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/72eac74e-0961-47f9-be8d-ef2e3aa156f5-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Gradient\/images\/qml-gradient.png/..\/..\/media\/qml-gradient.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-gridmesh.png https://developer.ubuntu.com/static/devportal_uploaded/42fd0a30-9670-4a1d-a93c-747d11263f74-api/apps/qml/sdk-15.04.5/QtQuick.GridMesh/images/declarative-gridmesh.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/42fd0a30-9670-4a1d-a93c-747d11263f74-api\/apps\/qml\/sdk-15.04.5\/QtQuick.GridMesh\/images\/declarative-gridmesh.png/..\/..\/media\/declarative-gridmesh.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridLayout_example.png https://developer.ubuntu.com/static/devportal_uploaded/aa87135e-7394-44bd-a283-8ec5cfd65064-api/apps/qml/sdk-15.04.5/QtQuick.Grid/images/gridLayout_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/aa87135e-7394-44bd-a283-8ec5cfd65064-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Grid\/images\/gridLayout_example.png/..\/..\/media\/gridLayout_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridLayout_aligncenter.png https://developer.ubuntu.com/static/devportal_uploaded/b4ae2285-0876-4cf4-a4a4-5839d378459f-api/apps/qml/sdk-15.04.5/QtQuick.Grid/images/gridLayout_aligncenter.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b4ae2285-0876-4cf4-a4a4-5839d378459f-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Grid\/images\/gridLayout_aligncenter.png/..\/..\/media\/gridLayout_aligncenter.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridLayout_aligncenter.png https://developer.ubuntu.com/static/devportal_uploaded/5f6e16fd-15e4-4f12-a174-360f22df3f54-api/apps/qml/sdk-15.04.5/QtQuick.Grid/images/gridLayout_aligncenter.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5f6e16fd-15e4-4f12-a174-360f22df3f54-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Grid\/images\/gridLayout_aligncenter.png/..\/..\/media\/gridLayout_aligncenter.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-grid-spacing.png https://developer.ubuntu.com/static/devportal_uploaded/1961208e-3e8d-4788-88e9-c2f34707e3a3-api/apps/qml/sdk-15.04.5/QtQuick.Grid/images/qml-grid-spacing.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1961208e-3e8d-4788-88e9-c2f34707e3a3-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Grid\/images\/qml-grid-spacing.png/..\/..\/media\/qml-grid-spacing.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridLayout_aligncenter.png https://developer.ubuntu.com/static/devportal_uploaded/3cbb1987-6037-4fe3-a5f6-88ddc9c479ef-api/apps/qml/sdk-15.04.5/QtQuick.Grid/images/gridLayout_aligncenter.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3cbb1987-6037-4fe3-a5f6-88ddc9c479ef-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Grid\/images\/gridLayout_aligncenter.png/..\/..\/media\/gridLayout_aligncenter.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridview-simple.png https://developer.ubuntu.com/static/devportal_uploaded/6601e9af-e549-48bf-bb21-3f92aba8b1ba-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-simple.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6601e9af-e549-48bf-bb21-3f92aba8b1ba-api\/apps\/qml\/sdk-15.04.5\/QtQuick.GridView\/images\/gridview-simple.png/..\/..\/media\/gridview-simple.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridview-highlight.png https://developer.ubuntu.com/static/devportal_uploaded/71fb1e58-da12-4823-a1fb-92da08a819b8-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-highlight.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/71fb1e58-da12-4823-a1fb-92da08a819b8-api\/apps\/qml\/sdk-15.04.5\/QtQuick.GridView\/images\/gridview-highlight.png/..\/..\/media\/gridview-highlight.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridview-layout-lefttoright-rtl-btt.png https://developer.ubuntu.com/static/devportal_uploaded/bd7bfc61-6be5-44a8-a080-b68f02c0acb8-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-lefttoright-rtl-btt.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bd7bfc61-6be5-44a8-a080-b68f02c0acb8-api\/apps\/qml\/sdk-15.04.5\/QtQuick.GridView\/images\/gridview-layout-lefttoright-rtl-btt.png/..\/..\/media\/gridview-layout-lefttoright-rtl-btt.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridview-layout-toptobottom-rtl-btt.png https://developer.ubuntu.com/static/devportal_uploaded/1b4d3f4d-6ad6-49b7-8b7a-aff11f097c1d-api/apps/qml/sdk-15.04.5/QtQuick.GridView/images/gridview-layout-toptobottom-rtl-btt.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1b4d3f4d-6ad6-49b7-8b7a-aff11f097c1d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.GridView\/images\/gridview-layout-toptobottom-rtl-btt.png/..\/..\/media\/gridview-layout-toptobottom-rtl-btt.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo.png https://developer.ubuntu.com/static/devportal_uploaded/88ff1898-d790-4461-b166-769f7e61e0dc-api/apps/qml/sdk-15.04.5/QtQuick.Image/images/declarative-qtlogo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/88ff1898-d790-4461-b166-769f7e61e0dc-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Image\/images\/declarative-qtlogo.png/..\/..\/media\/declarative-qtlogo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-stretch.png https://developer.ubuntu.com/static/devportal_uploaded/942ddd3d-e9a3-4e60-a175-659a5019e50e-api/apps/qml/sdk-15.04.5/QtQuick.Image/images/declarative-qtlogo-stretch.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/942ddd3d-e9a3-4e60-a175-659a5019e50e-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Image\/images\/declarative-qtlogo-stretch.png/..\/..\/media\/declarative-qtlogo-stretch.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-preserveaspectfit.png https://developer.ubuntu.com/static/devportal_uploaded/6696e9e4-4614-4cc0-9d9a-f655b3697cf1-api/apps/qml/sdk-15.04.5/QtQuick.Image/images/declarative-qtlogo-preserveaspectfit.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6696e9e4-4614-4cc0-9d9a-f655b3697cf1-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Image\/images\/declarative-qtlogo-preserveaspectfit.png/..\/..\/media\/declarative-qtlogo-preserveaspectfit.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-preserveaspectcrop.png https://developer.ubuntu.com/static/devportal_uploaded/28170bc7-b947-4c98-9816-ba912d11607c-api/apps/qml/sdk-15.04.5/QtQuick.Image/images/declarative-qtlogo-preserveaspectcrop.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/28170bc7-b947-4c98-9816-ba912d11607c-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Image\/images\/declarative-qtlogo-preserveaspectcrop.png/..\/..\/media\/declarative-qtlogo-preserveaspectcrop.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-tile.png https://developer.ubuntu.com/static/devportal_uploaded/9b716802-02fb-4ffe-ac7f-8fd51ab8ef55-api/apps/qml/sdk-15.04.5/QtQuick.Image/images/declarative-qtlogo-tile.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9b716802-02fb-4ffe-ac7f-8fd51ab8ef55-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Image\/images\/declarative-qtlogo-tile.png/..\/..\/media\/declarative-qtlogo-tile.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-tilevertically.png https://developer.ubuntu.com/static/devportal_uploaded/0e0bed12-80ec-4237-82b6-6980e7df4fdb-api/apps/qml/sdk-15.04.5/QtQuick.Image/images/declarative-qtlogo-tilevertically.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0e0bed12-80ec-4237-82b6-6980e7df4fdb-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Image\/images\/declarative-qtlogo-tilevertically.png/..\/..\/media\/declarative-qtlogo-tilevertically.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-tilehorizontally.png https://developer.ubuntu.com/static/devportal_uploaded/057285b1-d967-4ddf-bbaf-3001546ba21a-api/apps/qml/sdk-15.04.5/QtQuick.Image/images/declarative-qtlogo-tilehorizontally.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/057285b1-d967-4ddf-bbaf-3001546ba21a-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Image\/images\/declarative-qtlogo-tilehorizontally.png/..\/..\/media\/declarative-qtlogo-tilehorizontally.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-blending-nonlayered.png https://developer.ubuntu.com/static/devportal_uploaded/71a95caa-a18d-4b1a-a38a-3d687cabc34d-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/qml-blending-nonlayered.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/71a95caa-a18d-4b1a-a38a-3d687cabc34d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/qml-blending-nonlayered.png/..\/..\/media\/qml-blending-nonlayered.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-blending-layered.png https://developer.ubuntu.com/static/devportal_uploaded/9806ff37-592f-4a71-93c2-416f5f357866-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/qml-blending-layered.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9806ff37-592f-4a71-93c2-416f5f357866-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/qml-blending-layered.png/..\/..\/media\/qml-blending-layered.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-anchors_example.png https://developer.ubuntu.com/static/devportal_uploaded/2633fadb-a69c-4e55-b6b7-53d273664a80-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-anchors_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2633fadb-a69c-4e55-b6b7-53d273664a80-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-anchors_example.png/..\/..\/media\/declarative-anchors_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-anchors_example2.png https://developer.ubuntu.com/static/devportal_uploaded/ffe513fb-0111-4e68-a1f7-2de05b0d3495-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-anchors_example2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ffe513fb-0111-4e68-a1f7-2de05b0d3495-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-anchors_example2.png/..\/..\/media\/declarative-anchors_example2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_opacity1.png https://developer.ubuntu.com/static/devportal_uploaded/c9a6d891-cdbf-4b67-bd69-55871bfd566d-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_opacity1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c9a6d891-cdbf-4b67-bd69-55871bfd566d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-item_opacity1.png/..\/..\/media\/declarative-item_opacity1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_opacity2.png https://developer.ubuntu.com/static/devportal_uploaded/bfcb8902-272d-4d94-8471-a4ed7daf8d57-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_opacity2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bfcb8902-272d-4d94-8471-a4ed7daf8d57-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-item_opacity2.png/..\/..\/media\/declarative-item_opacity2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-rotation.png https://developer.ubuntu.com/static/devportal_uploaded/97de1343-4075-4415-880f-06b3a84a8fba-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-rotation.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/97de1343-4075-4415-880f-06b3a84a8fba-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-rotation.png/..\/..\/media\/declarative-rotation.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-scale.png https://developer.ubuntu.com/static/devportal_uploaded/d3328606-be73-4d86-9d0f-301be558d42c-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-scale.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d3328606-be73-4d86-9d0f-301be558d42c-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-scale.png/..\/..\/media\/declarative-scale.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-transformorigin.png https://developer.ubuntu.com/static/devportal_uploaded/a1bd45f2-351f-46eb-8474-21c3c4546116-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-transformorigin.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a1bd45f2-351f-46eb-8474-21c3c4546116-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-transformorigin.png/..\/..\/media\/declarative-transformorigin.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_stacking1.png https://developer.ubuntu.com/static/devportal_uploaded/38444563-aea0-40d2-a450-5dd4172b8a26-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_stacking1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/38444563-aea0-40d2-a450-5dd4172b8a26-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-item_stacking1.png/..\/..\/media\/declarative-item_stacking1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_stacking2.png https://developer.ubuntu.com/static/devportal_uploaded/8930d137-c77f-4d57-92a9-f9087f300c0d-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_stacking2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8930d137-c77f-4d57-92a9-f9087f300c0d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-item_stacking2.png/..\/..\/media\/declarative-item_stacking2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_stacking3.png https://developer.ubuntu.com/static/devportal_uploaded/75c82ac3-b997-42c9-9a17-d4dfb13c21d8-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_stacking3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/75c82ac3-b997-42c9-9a17-d4dfb13c21d8-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-item_stacking3.png/..\/..\/media\/declarative-item_stacking3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_stacking4.png https://developer.ubuntu.com/static/devportal_uploaded/85a72893-ea82-4b33-a1d8-e59e7764b6c9-api/apps/qml/sdk-15.04.5/QtQuick.Item/images/declarative-item_stacking4.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/85a72893-ea82-4b33-a1d8-e59e7764b6c9-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Item\/images\/declarative-item_stacking4.png/..\/..\/media\/declarative-item_stacking4.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layoutmirroring.png https://developer.ubuntu.com/static/devportal_uploaded/ada04fbc-315a-4e58-8c2c-a09f395e77a0-api/apps/qml/sdk-15.04.5/QtQuick.LayoutMirroring/images/layoutmirroring.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ada04fbc-315a-4e58-8c2c-a09f395e77a0-api\/apps\/qml\/sdk-15.04.5\/QtQuick.LayoutMirroring\/images\/layoutmirroring.png/..\/..\/media\/layoutmirroring.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-simple.png https://developer.ubuntu.com/static/devportal_uploaded/e440f75d-da7e-4103-b752-48eff29f4881-api/apps/qml/sdk-15.04.5/QtQuick.ListView/images/listview-simple.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e440f75d-da7e-4103-b752-48eff29f4881-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ListView\/images\/listview-simple.png/..\/..\/media\/listview-simple.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-highlight.png https://developer.ubuntu.com/static/devportal_uploaded/31fb86b1-f400-4794-ac39-5040e502bbc3-api/apps/qml/sdk-15.04.5/QtQuick.ListView/images/listview-highlight.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/31fb86b1-f400-4794-ac39-5040e502bbc3-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ListView\/images\/listview-highlight.png/..\/..\/media\/listview-highlight.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-layout-bottomtotop.png https://developer.ubuntu.com/static/devportal_uploaded/4ac3348e-8080-47f9-9c34-261fdecf84a7-api/apps/qml/sdk-15.04.5/QtQuick.ListView/images/listview-layout-bottomtotop.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4ac3348e-8080-47f9-9c34-261fdecf84a7-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ListView\/images\/listview-layout-bottomtotop.png/..\/..\/media\/listview-layout-bottomtotop.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-layout-righttoleft.png https://developer.ubuntu.com/static/devportal_uploaded/27ab57f9-ab66-4d57-929c-96fe4a82d2b5-api/apps/qml/sdk-15.04.5/QtQuick.ListView/images/listview-layout-righttoleft.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/27ab57f9-ab66-4d57-929c-96fe4a82d2b5-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ListView\/images\/listview-layout-righttoleft.png/..\/..\/media\/listview-layout-righttoleft.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/ListViewHorizontal.png https://developer.ubuntu.com/static/devportal_uploaded/26d14e33-23d9-410f-8e94-466fdd0e28ef-api/apps/qml/sdk-15.04.5/QtQuick.ListView/images/ListViewHorizontal.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/26d14e33-23d9-410f-8e94-466fdd0e28ef-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ListView\/images\/ListViewHorizontal.png/..\/..\/media\/ListViewHorizontal.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-highlight.png https://developer.ubuntu.com/static/devportal_uploaded/79597a99-6df2-49c6-8952-f5d2ce8b7e08-api/apps/qml/sdk-15.04.5/QtQuick.ListView/images/listview-highlight.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/79597a99-6df2-49c6-8952-f5d2ce8b7e08-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ListView\/images\/listview-highlight.png/..\/..\/media\/listview-highlight.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-listview-sections-example.png https://developer.ubuntu.com/static/devportal_uploaded/3c1e1e32-4f75-44ec-99ce-c9277c7d9de8-api/apps/qml/sdk-15.04.5/QtQuick.ListView/images/qml-listview-sections-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3c1e1e32-4f75-44ec-99ce-c9277c7d9de8-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ListView\/images\/qml-listview-sections-example.png/..\/..\/media\/qml-listview-sections-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-mousearea-snippet.png https://developer.ubuntu.com/static/devportal_uploaded/951370c0-a78f-4e02-854e-3712d15b2a7b-api/apps/qml/sdk-15.04.5/QtQuick.MouseArea/images/qml-mousearea-snippet.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/951370c0-a78f-4e02-854e-3712d15b2a7b-api\/apps\/qml\/sdk-15.04.5\/QtQuick.MouseArea\/images\/qml-mousearea-snippet.png/..\/..\/media\/qml-mousearea-snippet.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/parentchange.png https://developer.ubuntu.com/static/devportal_uploaded/43e88446-7043-4916-855c-abc09022dc90-api/apps/qml/sdk-15.04.5/QtQuick.ParentChange/images/parentchange.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/43e88446-7043-4916-855c-abc09022dc90-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ParentChange\/images\/parentchange.png/..\/..\/media\/parentchange.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/star.png https://developer.ubuntu.com/static/devportal_uploaded/344f1db4-b8bc-4e59-a6a3-f810d2e504b4-api/apps/qml/sdk-15.04.5/QtQuick.Particles.ImageParticle/images/star.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/344f1db4-b8bc-4e59-a6a3-f810d2e504b4-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Particles.ImageParticle\/images\/star.png/..\/..\/media\/star.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/glowdot.png https://developer.ubuntu.com/static/devportal_uploaded/f96c6a0d-b462-4d2f-91b9-3b3d3f0a4aa0-api/apps/qml/sdk-15.04.5/QtQuick.Particles.ImageParticle/images/glowdot.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f96c6a0d-b462-4d2f-91b9-3b3d3f0a4aa0-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Particles.ImageParticle\/images\/glowdot.png/..\/..\/media\/glowdot.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/fuzzydot.png https://developer.ubuntu.com/static/devportal_uploaded/c1120ae3-6025-4d66-be8b-128776a9dc60-api/apps/qml/sdk-15.04.5/QtQuick.Particles.ImageParticle/images/fuzzydot.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c1120ae3-6025-4d66-be8b-128776a9dc60-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Particles.ImageParticle\/images\/fuzzydot.png/..\/..\/media\/fuzzydot.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-patharc.png https://developer.ubuntu.com/static/devportal_uploaded/357b1e11-01fb-4ecc-a979-faeadc469fba-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-patharc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/357b1e11-01fb-4ecc-a979-faeadc469fba-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathArc\/images\/declarative-patharc.png/..\/..\/media\/declarative-patharc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-arcdirection.png https://developer.ubuntu.com/static/devportal_uploaded/6a525e6b-d3f1-4030-bac6-995c24fa8a7c-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-arcdirection.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6a525e6b-d3f1-4030-bac6-995c24fa8a7c-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathArc\/images\/declarative-arcdirection.png/..\/..\/media\/declarative-arcdirection.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-arcradius.png https://developer.ubuntu.com/static/devportal_uploaded/cfb4d3d4-88d2-4178-a053-8aa1af61af6a-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-arcradius.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cfb4d3d4-88d2-4178-a053-8aa1af61af6a-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathArc\/images\/declarative-arcradius.png/..\/..\/media\/declarative-arcradius.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-arcradius.png https://developer.ubuntu.com/static/devportal_uploaded/419ab223-a5a5-4e03-98c1-ee6b770f74fd-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-arcradius.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/419ab223-a5a5-4e03-98c1-ee6b770f74fd-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathArc\/images\/declarative-arcradius.png/..\/..\/media\/declarative-arcradius.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-largearc.png https://developer.ubuntu.com/static/devportal_uploaded/e46afb61-47fc-4f45-bde1-071b7c831c27-api/apps/qml/sdk-15.04.5/QtQuick.PathArc/images/declarative-largearc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e46afb61-47fc-4f45-bde1-071b7c831c27-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathArc\/images\/declarative-largearc.png/..\/..\/media\/declarative-largearc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathattribute.png https://developer.ubuntu.com/static/devportal_uploaded/a6e717d2-8ded-420c-b5a5-8e64dd35dcce-api/apps/qml/sdk-15.04.5/QtQuick.PathAttribute/images/declarative-pathattribute.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a6e717d2-8ded-420c-b5a5-8e64dd35dcce-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathAttribute\/images\/declarative-pathattribute.png/..\/..\/media\/declarative-pathattribute.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathcubic.png https://developer.ubuntu.com/static/devportal_uploaded/994da620-77ec-43ed-bb61-c66dddac7346-api/apps/qml/sdk-15.04.5/QtQuick.PathCubic/images/declarative-pathcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/994da620-77ec-43ed-bb61-c66dddac7346-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathCubic\/images\/declarative-pathcubic.png/..\/..\/media\/declarative-pathcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathcurve.png https://developer.ubuntu.com/static/devportal_uploaded/26204aee-225c-4e0c-abd7-29cb2a5e7452-api/apps/qml/sdk-15.04.5/QtQuick.PathCurve/images/declarative-pathcurve.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/26204aee-225c-4e0c-abd7-29cb2a5e7452-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathCurve\/images\/declarative-pathcurve.png/..\/..\/media\/declarative-pathcurve.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-nopercent.png https://developer.ubuntu.com/static/devportal_uploaded/393dbdee-64bb-48f7-9451-5f3177d47d51-api/apps/qml/sdk-15.04.5/QtQuick.PathPercent/images/declarative-nopercent.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/393dbdee-64bb-48f7-9451-5f3177d47d51-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathPercent\/images\/declarative-nopercent.png/..\/..\/media\/declarative-nopercent.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-percent.png https://developer.ubuntu.com/static/devportal_uploaded/d543dcb5-cf61-4f2a-ba3b-191d0896ddc7-api/apps/qml/sdk-15.04.5/QtQuick.PathPercent/images/declarative-percent.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d543dcb5-cf61-4f2a-ba3b-191d0896ddc7-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathPercent\/images\/declarative-percent.png/..\/..\/media\/declarative-percent.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathsvg.png https://developer.ubuntu.com/static/devportal_uploaded/c9bfcf1b-fd39-46ff-979f-c4f72229076b-api/apps/qml/sdk-15.04.5/QtQuick.PathSvg/images/declarative-pathsvg.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c9bfcf1b-fd39-46ff-979f-c4f72229076b-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathSvg\/images\/declarative-pathsvg.png/..\/..\/media\/declarative-pathsvg.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathquad.png https://developer.ubuntu.com/static/devportal_uploaded/87fee07c-74a9-4b62-9410-d132b86f042c-api/apps/qml/sdk-15.04.5/QtQuick.PathQuad/images/declarative-pathquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/87fee07c-74a9-4b62-9410-d132b86f042c-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathQuad\/images\/declarative-pathquad.png/..\/..\/media\/declarative-pathquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/pathview.gif https://developer.ubuntu.com/static/devportal_uploaded/52014486-2259-4d17-b722-42706f8aeafe-api/apps/qml/sdk-15.04.5/QtQuick.PathView/images/pathview.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/52014486-2259-4d17-b722-42706f8aeafe-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PathView\/images\/pathview.gif/..\/..\/media\/pathview.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/positioner-example.png https://developer.ubuntu.com/static/devportal_uploaded/3a7f04b4-e553-4e35-8797-9bdf1fbe29ef-api/apps/qml/sdk-15.04.5/QtQuick.Positioner/images/positioner-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3a7f04b4-e553-4e35-8797-9bdf1fbe29ef-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Positioner\/images\/positioner-example.png/..\/..\/media\/positioner-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-linear.png https://developer.ubuntu.com/static/devportal_uploaded/d2842204-729f-482b-9c3e-348945d608dc-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-linear.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d2842204-729f-482b-9c3e-348945d608dc-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-linear.png/..\/..\/media\/qeasingcurve-linear.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquad.png https://developer.ubuntu.com/static/devportal_uploaded/b2a23423-7a0c-4466-aa0f-1b702e2a6306-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b2a23423-7a0c-4466-aa0f-1b702e2a6306-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inquad.png/..\/..\/media\/qeasingcurve-inquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquad.png https://developer.ubuntu.com/static/devportal_uploaded/a30bd85f-902a-4fa3-852f-e1c25509a8b3-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a30bd85f-902a-4fa3-852f-e1c25509a8b3-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outquad.png/..\/..\/media\/qeasingcurve-outquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquad.png https://developer.ubuntu.com/static/devportal_uploaded/5438ef74-156b-48a5-9a97-88f760664719-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5438ef74-156b-48a5-9a97-88f760664719-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutquad.png/..\/..\/media\/qeasingcurve-inoutquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquad.png https://developer.ubuntu.com/static/devportal_uploaded/cf6a09d1-fc8a-4247-a82d-83fbf8e4a101-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cf6a09d1-fc8a-4247-a82d-83fbf8e4a101-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinquad.png/..\/..\/media\/qeasingcurve-outinquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-incubic.png https://developer.ubuntu.com/static/devportal_uploaded/e19e9dcb-470c-4616-96e9-b0fe567fc0da-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-incubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e19e9dcb-470c-4616-96e9-b0fe567fc0da-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-incubic.png/..\/..\/media\/qeasingcurve-incubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outcubic.png https://developer.ubuntu.com/static/devportal_uploaded/e328fd36-7380-47a0-bbe6-5468d050d1e6-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e328fd36-7380-47a0-bbe6-5468d050d1e6-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outcubic.png/..\/..\/media\/qeasingcurve-outcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutcubic.png https://developer.ubuntu.com/static/devportal_uploaded/9bde28ba-a0a8-4060-a112-05b0c2a974e6-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9bde28ba-a0a8-4060-a112-05b0c2a974e6-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutcubic.png/..\/..\/media\/qeasingcurve-inoutcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outincubic.png https://developer.ubuntu.com/static/devportal_uploaded/8fd57cdc-8b8b-4125-946f-bf2702e64f2e-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outincubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8fd57cdc-8b8b-4125-946f-bf2702e64f2e-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outincubic.png/..\/..\/media\/qeasingcurve-outincubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquart.png https://developer.ubuntu.com/static/devportal_uploaded/c888870e-61b8-44a4-b12b-7099d9b15064-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c888870e-61b8-44a4-b12b-7099d9b15064-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inquart.png/..\/..\/media\/qeasingcurve-inquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquart.png https://developer.ubuntu.com/static/devportal_uploaded/f626d9d9-0b48-4309-8b4e-e8279657ae34-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f626d9d9-0b48-4309-8b4e-e8279657ae34-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outquart.png/..\/..\/media\/qeasingcurve-outquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquart.png https://developer.ubuntu.com/static/devportal_uploaded/f58b8f5f-4238-4328-842c-19b92ffd4314-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f58b8f5f-4238-4328-842c-19b92ffd4314-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutquart.png/..\/..\/media\/qeasingcurve-inoutquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquart.png https://developer.ubuntu.com/static/devportal_uploaded/128f85e1-47ba-4e05-bd13-b64b54a37a40-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/128f85e1-47ba-4e05-bd13-b64b54a37a40-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinquart.png/..\/..\/media\/qeasingcurve-outinquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquint.png https://developer.ubuntu.com/static/devportal_uploaded/db2266de-5e08-4858-b00e-a3cb9e888ce8-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/db2266de-5e08-4858-b00e-a3cb9e888ce8-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inquint.png/..\/..\/media\/qeasingcurve-inquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquint.png https://developer.ubuntu.com/static/devportal_uploaded/c095e2e5-0081-42e1-9656-273e61a52edd-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c095e2e5-0081-42e1-9656-273e61a52edd-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outquint.png/..\/..\/media\/qeasingcurve-outquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquint.png https://developer.ubuntu.com/static/devportal_uploaded/0d50c9eb-48b9-4f97-9e6a-018241aef17f-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0d50c9eb-48b9-4f97-9e6a-018241aef17f-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutquint.png/..\/..\/media\/qeasingcurve-inoutquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquint.png https://developer.ubuntu.com/static/devportal_uploaded/841235e6-57d4-4eea-aae4-46d840076271-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/841235e6-57d4-4eea-aae4-46d840076271-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinquint.png/..\/..\/media\/qeasingcurve-outinquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-insine.png https://developer.ubuntu.com/static/devportal_uploaded/72357a33-b358-43fd-81fe-b93946272d33-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-insine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/72357a33-b358-43fd-81fe-b93946272d33-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-insine.png/..\/..\/media\/qeasingcurve-insine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outsine.png https://developer.ubuntu.com/static/devportal_uploaded/afd44875-0549-431e-b20d-6945501edc8a-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/afd44875-0549-431e-b20d-6945501edc8a-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outsine.png/..\/..\/media\/qeasingcurve-outsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutsine.png https://developer.ubuntu.com/static/devportal_uploaded/6e06f7c2-9996-4d56-8ed5-6f067142e563-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6e06f7c2-9996-4d56-8ed5-6f067142e563-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutsine.png/..\/..\/media\/qeasingcurve-inoutsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinsine.png https://developer.ubuntu.com/static/devportal_uploaded/1876e135-90a1-4707-82c0-7450c5add568-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1876e135-90a1-4707-82c0-7450c5add568-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinsine.png/..\/..\/media\/qeasingcurve-outinsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inexpo.png https://developer.ubuntu.com/static/devportal_uploaded/cdf31aa0-46e6-4b49-ae92-3c001251ae04-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cdf31aa0-46e6-4b49-ae92-3c001251ae04-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inexpo.png/..\/..\/media\/qeasingcurve-inexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outexpo.png https://developer.ubuntu.com/static/devportal_uploaded/c97bedd3-182a-4d40-b035-ac32b1d77e40-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c97bedd3-182a-4d40-b035-ac32b1d77e40-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outexpo.png/..\/..\/media\/qeasingcurve-outexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutexpo.png https://developer.ubuntu.com/static/devportal_uploaded/971489bb-2c12-4921-b09b-ad3fdcb610ad-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/971489bb-2c12-4921-b09b-ad3fdcb610ad-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutexpo.png/..\/..\/media\/qeasingcurve-inoutexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinexpo.png https://developer.ubuntu.com/static/devportal_uploaded/9538a5a5-c9bf-4483-96ff-6945d2039128-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9538a5a5-c9bf-4483-96ff-6945d2039128-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinexpo.png/..\/..\/media\/qeasingcurve-outinexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-incirc.png https://developer.ubuntu.com/static/devportal_uploaded/16a9f11c-ad9c-426b-a557-2c4db54d55b5-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-incirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/16a9f11c-ad9c-426b-a557-2c4db54d55b5-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-incirc.png/..\/..\/media\/qeasingcurve-incirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outcirc.png https://developer.ubuntu.com/static/devportal_uploaded/7bf95e15-4ee7-4baa-a1c9-4ad6439dd943-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outcirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7bf95e15-4ee7-4baa-a1c9-4ad6439dd943-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outcirc.png/..\/..\/media\/qeasingcurve-outcirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutcirc.png https://developer.ubuntu.com/static/devportal_uploaded/72c7ca8b-94ff-4939-8f80-7f095cecb67d-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/72c7ca8b-94ff-4939-8f80-7f095cecb67d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutcirc.png/..\/..\/media\/qeasingcurve-inoutcirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outincirc.png https://developer.ubuntu.com/static/devportal_uploaded/ebe8a3f3-0034-4c47-992e-2aba5237b6b4-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outincirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ebe8a3f3-0034-4c47-992e-2aba5237b6b4-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outincirc.png/..\/..\/media\/qeasingcurve-outincirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inelastic.png https://developer.ubuntu.com/static/devportal_uploaded/5a435516-e6d5-4778-8dde-405154aa03cf-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5a435516-e6d5-4778-8dde-405154aa03cf-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inelastic.png/..\/..\/media\/qeasingcurve-inelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outelastic.png https://developer.ubuntu.com/static/devportal_uploaded/a3c48cf2-2ce5-48a4-9a38-e43ca57325d1-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a3c48cf2-2ce5-48a4-9a38-e43ca57325d1-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outelastic.png/..\/..\/media\/qeasingcurve-outelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutelastic.png https://developer.ubuntu.com/static/devportal_uploaded/49f3742b-df5b-4ea7-bacd-d8a843ce707b-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/49f3742b-df5b-4ea7-bacd-d8a843ce707b-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutelastic.png/..\/..\/media\/qeasingcurve-inoutelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinelastic.png https://developer.ubuntu.com/static/devportal_uploaded/42933676-27f8-4931-bd8d-5941a9d22174-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/42933676-27f8-4931-bd8d-5941a9d22174-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinelastic.png/..\/..\/media\/qeasingcurve-outinelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inback.png https://developer.ubuntu.com/static/devportal_uploaded/1b31b9a1-5101-4ef7-a06b-b68e6eab1efb-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1b31b9a1-5101-4ef7-a06b-b68e6eab1efb-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inback.png/..\/..\/media\/qeasingcurve-inback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outback.png https://developer.ubuntu.com/static/devportal_uploaded/98d60224-332f-44e4-9aca-bde6d56c426c-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/98d60224-332f-44e4-9aca-bde6d56c426c-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outback.png/..\/..\/media\/qeasingcurve-outback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutback.png https://developer.ubuntu.com/static/devportal_uploaded/670bd4eb-c693-4777-a9ab-d93d178cfca6-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/670bd4eb-c693-4777-a9ab-d93d178cfca6-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutback.png/..\/..\/media\/qeasingcurve-inoutback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinback.png https://developer.ubuntu.com/static/devportal_uploaded/1e5b9ed3-c798-4911-b0ff-740e7ce10cb9-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1e5b9ed3-c798-4911-b0ff-740e7ce10cb9-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinback.png/..\/..\/media\/qeasingcurve-outinback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inbounce.png https://developer.ubuntu.com/static/devportal_uploaded/bd13694f-b430-4e56-90cc-33b23eaa01c0-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bd13694f-b430-4e56-90cc-33b23eaa01c0-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inbounce.png/..\/..\/media\/qeasingcurve-inbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outbounce.png https://developer.ubuntu.com/static/devportal_uploaded/c13dbd5b-7daf-4a07-81eb-fde34707c358-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c13dbd5b-7daf-4a07-81eb-fde34707c358-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outbounce.png/..\/..\/media\/qeasingcurve-outbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutbounce.png https://developer.ubuntu.com/static/devportal_uploaded/3ed141bd-7d2c-44b4-bda3-67462db1159b-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-inoutbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3ed141bd-7d2c-44b4-bda3-67462db1159b-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutbounce.png/..\/..\/media\/qeasingcurve-inoutbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinbounce.png https://developer.ubuntu.com/static/devportal_uploaded/ef944a69-0bff-4302-9533-6b92660a52eb-api/apps/qml/sdk-15.04.5/QtQuick.PropertyAnimation/images/qeasingcurve-outinbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ef944a69-0bff-4302-9533-6b92660a52eb-api\/apps\/qml\/sdk-15.04.5\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinbounce.png/..\/..\/media\/qeasingcurve-outinbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-samegame.png https://developer.ubuntu.com/static/devportal_uploaded/d44c2877-bf71-4582-9381-cfe4019f7ed2-api/apps/qml/sdk-15.04.5/qml-advtutorial/images/declarative-samegame.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d44c2877-bf71-4582-9381-cfe4019f7ed2-api\/apps\/qml\/sdk-15.04.5\/qml-advtutorial\/images\/declarative-samegame.png/..\/..\/media\/declarative-samegame.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-tutorial1.png https://developer.ubuntu.com/static/devportal_uploaded/b584c4a4-dc97-4277-bdc5-5ead41e428f9-api/apps/qml/sdk-15.04.5/qml-tutorial1/images/declarative-tutorial1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b584c4a4-dc97-4277-bdc5-5ead41e428f9-api\/apps\/qml\/sdk-15.04.5\/qml-tutorial1\/images\/declarative-tutorial1.png/..\/..\/media\/declarative-tutorial1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-tutorial2.png https://developer.ubuntu.com/static/devportal_uploaded/d87f6062-33bb-4f49-ac24-394dfba82410-api/apps/qml/sdk-15.04.5/qml-tutorial2/images/declarative-tutorial2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d87f6062-33bb-4f49-ac24-394dfba82410-api\/apps\/qml\/sdk-15.04.5\/qml-tutorial2\/images\/declarative-tutorial2.png/..\/..\/media\/declarative-tutorial2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-tutorial3_animation.gif https://developer.ubuntu.com/static/devportal_uploaded/377c231e-211d-45e4-bfab-d3683fe1297a-api/apps/qml/sdk-15.04.5/qml-tutorial3/images/declarative-tutorial3_animation.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/377c231e-211d-45e4-bfab-d3683fe1297a-api\/apps\/qml\/sdk-15.04.5\/qml-tutorial3\/images\/declarative-tutorial3_animation.gif/..\/..\/media\/declarative-tutorial3_animation.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-animations-example.png https://developer.ubuntu.com/static/devportal_uploaded/15b1c22e-2602-4de1-a24b-05e20311b7b3-api/apps/qml/sdk-15.04.5/qtquick-animation-example/images/qml-animations-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/15b1c22e-2602-4de1-a24b-05e20311b7b3-api\/apps\/qml\/sdk-15.04.5\/qtquick-animation-example\/images\/qml-animations-example.png/..\/..\/media\/qml-animations-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-canvas-example.png https://developer.ubuntu.com/static/devportal_uploaded/9bba0e14-1c23-409f-ab22-1ae9006a8863-api/apps/qml/sdk-15.04.5/qtquick-canvas-example/images/qml-canvas-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9bba0e14-1c23-409f-ab22-1ae9006a8863-api\/apps\/qml\/sdk-15.04.5\/qtquick-canvas-example\/images\/qml-canvas-example.png/..\/..\/media\/qml-canvas-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-dialcontrol-example.png https://developer.ubuntu.com/static/devportal_uploaded/370d6236-06cd-4353-98e5-8c3bb8cc8f5d-api/apps/qml/sdk-15.04.5/qtquick-customitems-dialcontrol-example/images/qml-dialcontrol-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/370d6236-06cd-4353-98e5-8c3bb8cc8f5d-api\/apps\/qml\/sdk-15.04.5\/qtquick-customitems-dialcontrol-example\/images\/qml-dialcontrol-example.png/..\/..\/media\/qml-dialcontrol-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-flipable-example.png https://developer.ubuntu.com/static/devportal_uploaded/ca36a169-7a4e-43b1-8daa-b41a555c9e2a-api/apps/qml/sdk-15.04.5/qtquick-customitems-flipable-example/images/qml-flipable-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ca36a169-7a4e-43b1-8daa-b41a555c9e2a-api\/apps\/qml\/sdk-15.04.5\/qtquick-customitems-flipable-example\/images\/qml-flipable-example.png/..\/..\/media\/qml-flipable-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textballoons_example.png https://developer.ubuntu.com/static/devportal_uploaded/38661ba9-e499-46b0-a52a-b00c464c15a6-api/apps/qml/sdk-15.04.5/qtquick-customitems-painteditem-example/images/declarative-textballoons_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/38661ba9-e499-46b0-a52a-b00c464c15a6-api\/apps\/qml\/sdk-15.04.5\/qtquick-customitems-painteditem-example\/images\/declarative-textballoons_example.png/..\/..\/media\/declarative-textballoons_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-scrollbar-example.png https://developer.ubuntu.com/static/devportal_uploaded/f14a83e2-e65a-4256-809f-c9a3f095997d-api/apps/qml/sdk-15.04.5/qtquick-customitems-scrollbar-example/images/qml-scrollbar-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f14a83e2-e65a-4256-809f-c9a3f095997d-api\/apps\/qml\/sdk-15.04.5\/qtquick-customitems-scrollbar-example\/images\/qml-scrollbar-example.png/..\/..\/media\/qml-scrollbar-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-tabwidget-example.png https://developer.ubuntu.com/static/devportal_uploaded/361db68b-938e-4efa-ac48-bce352606af7-api/apps/qml/sdk-15.04.5/qtquick-customitems-tabwidget-example/images/qml-tabwidget-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/361db68b-938e-4efa-ac48-bce352606af7-api\/apps\/qml\/sdk-15.04.5\/qtquick-customitems-tabwidget-example\/images\/qml-tabwidget-example.png/..\/..\/media\/qml-tabwidget-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-calqlatr.png https://developer.ubuntu.com/static/devportal_uploaded/91f3228e-ba24-47d3-8734-acc9fdbe6e69-api/apps/qml/sdk-15.04.5/qtquick-demos-calqlatr-example/images/qtquick-demo-calqlatr.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/91f3228e-ba24-47d3-8734-acc9fdbe6e69-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-calqlatr-example\/images\/qtquick-demo-calqlatr.png/..\/..\/media\/qtquick-demo-calqlatr.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-photosurface-small.png https://developer.ubuntu.com/static/devportal_uploaded/7e1797fe-6264-4515-a8b7-40fb075bd675-api/apps/qml/sdk-15.04.5/qtquick-demos-photosurface-example/images/qtquick-demo-photosurface-small.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7e1797fe-6264-4515-a8b7-40fb075bd675-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-photosurface-example\/images\/qtquick-demo-photosurface-small.png/..\/..\/media\/qtquick-demo-photosurface-small.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-clocks-small.png https://developer.ubuntu.com/static/devportal_uploaded/f861098f-20b3-44ed-a06d-a213c43b846c-api/apps/qml/sdk-15.04.5/qtquick-demos-clocks-example/images/qtquick-demo-clocks-small.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f861098f-20b3-44ed-a06d-a213c43b846c-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-clocks-example\/images\/qtquick-demo-clocks-small.png/..\/..\/media\/qtquick-demo-clocks-small.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-photoviewer-small.png https://developer.ubuntu.com/static/devportal_uploaded/c3ef24e8-2a92-46d1-ae01-97c7af197c45-api/apps/qml/sdk-15.04.5/qtquick-demos-photoviewer-example/images/qtquick-demo-photoviewer-small.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c3ef24e8-2a92-46d1-ae01-97c7af197c45-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-photoviewer-example\/images\/qtquick-demo-photoviewer-small.png/..\/..\/media\/qtquick-demo-photoviewer-small.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-2.png https://developer.ubuntu.com/static/devportal_uploaded/b9aca2cd-6103-4475-847f-94b8c15ee39a-api/apps/qml/sdk-15.04.5/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b9aca2cd-6103-4475-847f-94b8c15ee39a-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-2.png/..\/..\/media\/qtquick-demo-maroon-med-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-1.png https://developer.ubuntu.com/static/devportal_uploaded/8891d42e-6e23-4645-855d-95ec65f49e10-api/apps/qml/sdk-15.04.5/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8891d42e-6e23-4645-855d-95ec65f49e10-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-1.png/..\/..\/media\/qtquick-demo-maroon-med-1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-2.png https://developer.ubuntu.com/static/devportal_uploaded/ef121060-520c-45b7-ac17-3bc00f287ed6-api/apps/qml/sdk-15.04.5/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ef121060-520c-45b7-ac17-3bc00f287ed6-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-2.png/..\/..\/media\/qtquick-demo-maroon-med-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-3.jpg https://developer.ubuntu.com/static/devportal_uploaded/5ffdbe71-cda8-4879-a597-74bbeddfe406-api/apps/qml/sdk-15.04.5/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-3.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5ffdbe71-cda8-4879-a597-74bbeddfe406-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-3.jpg/..\/..\/media\/qtquick-demo-maroon-med-3.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-4.jpg https://developer.ubuntu.com/static/devportal_uploaded/72c71336-1a55-4d89-8299-84b31f700a55-api/apps/qml/sdk-15.04.5/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-4.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/72c71336-1a55-4d89-8299-84b31f700a55-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-4.jpg/..\/..\/media\/qtquick-demo-maroon-med-4.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-6.jpg https://developer.ubuntu.com/static/devportal_uploaded/c57e9471-e06d-443a-a1a5-386bb57e9764-api/apps/qml/sdk-15.04.5/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-6.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c57e9471-e06d-443a-a1a5-386bb57e9764-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-6.jpg/..\/..\/media\/qtquick-demo-maroon-med-6.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/mob-idle.png https://developer.ubuntu.com/static/devportal_uploaded/378afee8-54e0-49fa-a838-3dd3e7c4dfe1-api/apps/qml/sdk-15.04.5/qtquick-demos-maroon-example/images/mob-idle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/378afee8-54e0-49fa-a838-3dd3e7c4dfe1-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-maroon-example\/images\/mob-idle.png/..\/..\/media\/mob-idle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-5.jpg https://developer.ubuntu.com/static/devportal_uploaded/02b11baa-e0bc-4eda-b92f-65fce4e50616-api/apps/qml/sdk-15.04.5/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-5.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/02b11baa-e0bc-4eda-b92f-65fce4e50616-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-5.jpg/..\/..\/media\/qtquick-demo-maroon-med-5.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-rssnews-small.png https://developer.ubuntu.com/static/devportal_uploaded/ff9213bc-757f-4039-b50f-5c6dc63cf801-api/apps/qml/sdk-15.04.5/qtquick-demos-rssnews-example/images/qtquick-demo-rssnews-small.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ff9213bc-757f-4039-b50f-5c6dc63cf801-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-rssnews-example\/images\/qtquick-demo-rssnews-small.png/..\/..\/media\/qtquick-demo-rssnews-small.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-samegame-med-2.png https://developer.ubuntu.com/static/devportal_uploaded/3e32acac-85a5-4d98-91a5-06ab809d12e2-api/apps/qml/sdk-15.04.5/qtquick-demos-samegame-example/images/qtquick-demo-samegame-med-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3e32acac-85a5-4d98-91a5-06ab809d12e2-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-samegame-example\/images\/qtquick-demo-samegame-med-2.png/..\/..\/media\/qtquick-demo-samegame-med-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-stocqt.png https://developer.ubuntu.com/static/devportal_uploaded/8d8b1b91-50ea-497d-ba53-f8c642c4c3ce-api/apps/qml/sdk-15.04.5/qtquick-demos-stocqt-example/images/qtquick-demo-stocqt.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8d8b1b91-50ea-497d-ba53-f8c642c4c3ce-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-stocqt-example\/images\/qtquick-demo-stocqt.png/..\/..\/media\/qtquick-demo-stocqt.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-tweetsearch-med-2.png https://developer.ubuntu.com/static/devportal_uploaded/d5d0c164-5818-4da6-b339-6bdcfa445536-api/apps/qml/sdk-15.04.5/qtquick-demos-tweetsearch-example/images/qtquick-demo-tweetsearch-med-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d5d0c164-5818-4da6-b339-6bdcfa445536-api\/apps\/qml\/sdk-15.04.5\/qtquick-demos-tweetsearch-example\/images\/qtquick-demo-tweetsearch-med-2.png/..\/..\/media\/qtquick-demo-tweetsearch-med-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-draganddrop-example.png https://developer.ubuntu.com/static/devportal_uploaded/dd2b4762-0d36-4cdd-a1c2-92b0a1ed2d55-api/apps/qml/sdk-15.04.5/qtquick-draganddrop-example/images/qml-draganddrop-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dd2b4762-0d36-4cdd-a1c2-92b0a1ed2d55-api\/apps\/qml\/sdk-15.04.5\/qtquick-draganddrop-example\/images\/qml-draganddrop-example.png/..\/..\/media\/qml-draganddrop-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/spriteenginegraph.png https://developer.ubuntu.com/static/devportal_uploaded/13391aff-85db-40cd-b915-fbada1828fea-api/apps/qml/sdk-15.04.5/qtquick-effects-sprites/images/spriteenginegraph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/13391aff-85db-40cd-b915-fbada1828fea-api\/apps\/qml\/sdk-15.04.5\/qtquick-effects-sprites\/images\/spriteenginegraph.png/..\/..\/media\/spriteenginegraph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/spritecutting.png https://developer.ubuntu.com/static/devportal_uploaded/c9676a73-dc4e-4ed7-8a9b-e87b8fbf0b68-api/apps/qml/sdk-15.04.5/qtquick-effects-sprites/images/spritecutting.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c9676a73-dc4e-4ed7-8a9b-e87b8fbf0b68-api\/apps\/qml\/sdk-15.04.5\/qtquick-effects-sprites\/images\/spritecutting.png/..\/..\/media\/spritecutting.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-dnd2-example.png https://developer.ubuntu.com/static/devportal_uploaded/d2038d31-8342-4a7b-8c37-9ed32d390b0f-api/apps/qml/sdk-15.04.5/qtquick-externaldraganddrop-example/images/qml-dnd2-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d2038d31-8342-4a7b-8c37-9ed32d390b0f-api\/apps\/qml\/sdk-15.04.5\/qtquick-externaldraganddrop-example\/images\/qml-dnd2-example.png/..\/..\/media\/qml-dnd2-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-imageelements-example.png https://developer.ubuntu.com/static/devportal_uploaded/d67e9217-a197-44df-aa0a-ccb2e8351a00-api/apps/qml/sdk-15.04.5/qtquick-imageelements-example/images/qml-imageelements-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d67e9217-a197-44df-aa0a-ccb2e8351a00-api\/apps\/qml\/sdk-15.04.5\/qtquick-imageelements-example\/images\/qml-imageelements-example.png/..\/..\/media\/qml-imageelements-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-imageprovider-example.png https://developer.ubuntu.com/static/devportal_uploaded/af68cad3-2cde-4991-9ac6-92986c3f1e00-api/apps/qml/sdk-15.04.5/qtquick-imageprovider-example/images/qml-imageprovider-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/af68cad3-2cde-4991-9ac6-92986c3f1e00-api\/apps\/qml\/sdk-15.04.5\/qtquick-imageprovider-example\/images\/qml-imageprovider-example.png/..\/..\/media\/qml-imageprovider-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus1.png https://developer.ubuntu.com/static/devportal_uploaded/48764e21-8d06-40f5-a365-9d264066ab61-api/apps/qml/sdk-15.04.5/qtquick-input-focus/images/declarative-qmlfocus1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/48764e21-8d06-40f5-a365-9d264066ab61-api\/apps\/qml\/sdk-15.04.5\/qtquick-input-focus\/images\/declarative-qmlfocus1.png/..\/..\/media\/declarative-qmlfocus1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus2.png https://developer.ubuntu.com/static/devportal_uploaded/6cf61b49-f621-4d30-b060-6a6a887a3f71-api/apps/qml/sdk-15.04.5/qtquick-input-focus/images/declarative-qmlfocus2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6cf61b49-f621-4d30-b060-6a6a887a3f71-api\/apps\/qml\/sdk-15.04.5\/qtquick-input-focus\/images\/declarative-qmlfocus2.png/..\/..\/media\/declarative-qmlfocus2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus3.png https://developer.ubuntu.com/static/devportal_uploaded/d7468c66-2f5f-432d-83f2-3054e328e69a-api/apps/qml/sdk-15.04.5/qtquick-input-focus/images/declarative-qmlfocus3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d7468c66-2f5f-432d-83f2-3054e328e69a-api\/apps\/qml\/sdk-15.04.5\/qtquick-input-focus\/images\/declarative-qmlfocus3.png/..\/..\/media\/declarative-qmlfocus3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus4.png https://developer.ubuntu.com/static/devportal_uploaded/0dd5673e-71b9-492c-8997-81072915e2c6-api/apps/qml/sdk-15.04.5/qtquick-input-focus/images/declarative-qmlfocus4.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0dd5673e-71b9-492c-8997-81072915e2c6-api\/apps\/qml\/sdk-15.04.5\/qtquick-input-focus\/images\/declarative-qmlfocus4.png/..\/..\/media\/declarative-qmlfocus4.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus5.png https://developer.ubuntu.com/static/devportal_uploaded/3a9cf79b-1088-41c6-a75a-9112daf02b27-api/apps/qml/sdk-15.04.5/qtquick-input-focus/images/declarative-qmlfocus5.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3a9cf79b-1088-41c6-a75a-9112daf02b27-api\/apps\/qml\/sdk-15.04.5\/qtquick-input-focus\/images\/declarative-qmlfocus5.png/..\/..\/media\/declarative-qmlfocus5.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-keyinteraction-example.png https://developer.ubuntu.com/static/devportal_uploaded/6d945928-9385-4a79-a54b-41ae4f3f7723-api/apps/qml/sdk-15.04.5/qtquick-keyinteraction-example/images/qml-keyinteraction-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6d945928-9385-4a79-a54b-41ae4f3f7723-api\/apps\/qml\/sdk-15.04.5\/qtquick-keyinteraction-example\/images\/qml-keyinteraction-example.png/..\/..\/media\/qml-keyinteraction-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-localstorage-example.png https://developer.ubuntu.com/static/devportal_uploaded/28034874-2b67-49c0-984c-270aa77e29a1-api/apps/qml/sdk-15.04.5/qtquick-localstorage-example/images/qml-localstorage-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/28034874-2b67-49c0-984c-270aa77e29a1-api\/apps\/qml\/sdk-15.04.5\/qtquick-localstorage-example\/images\/qml-localstorage-example.png/..\/..\/media\/qml-localstorage-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-abstractitemmodel-example.png https://developer.ubuntu.com/static/devportal_uploaded/a9c50047-353e-49ec-bb01-c6dbf2ed7ab0-api/apps/qml/sdk-15.04.5/qtquick-models-abstractitemmodel-example/images/qml-abstractitemmodel-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a9c50047-353e-49ec-bb01-c6dbf2ed7ab0-api\/apps\/qml\/sdk-15.04.5\/qtquick-models-abstractitemmodel-example\/images\/qml-abstractitemmodel-example.png/..\/..\/media\/qml-abstractitemmodel-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-objectlistmodel-example.png https://developer.ubuntu.com/static/devportal_uploaded/dfd237c7-ea4a-43d5-960b-6f2946298d86-api/apps/qml/sdk-15.04.5/qtquick-models-objectlistmodel-example/images/qml-objectlistmodel-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dfd237c7-ea4a-43d5-960b-6f2946298d86-api\/apps\/qml\/sdk-15.04.5\/qtquick-models-objectlistmodel-example\/images\/qml-objectlistmodel-example.png/..\/..\/media\/qml-objectlistmodel-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-stringlistmodel-example.png https://developer.ubuntu.com/static/devportal_uploaded/c6cd8459-53c8-40b3-82ba-0bc4aae32c48-api/apps/qml/sdk-15.04.5/qtquick-models-stringlistmodel-example/images/qml-stringlistmodel-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c6cd8459-53c8-40b3-82ba-0bc4aae32c48-api\/apps\/qml\/sdk-15.04.5\/qtquick-models-stringlistmodel-example\/images\/qml-stringlistmodel-example.png/..\/..\/media\/qml-stringlistmodel-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/modelview-overview.png https://developer.ubuntu.com/static/devportal_uploaded/3377afe0-a7a9-4152-b0fe-3414f94e8e80-api/apps/qml/sdk-15.04.5/qtquick-modelviewsdata-modelview/images/modelview-overview.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3377afe0-a7a9-4152-b0fe-3414f94e8e80-api\/apps\/qml\/sdk-15.04.5\/qtquick-modelviewsdata-modelview\/images\/modelview-overview.png/..\/..\/media\/modelview-overview.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-decorations.png https://developer.ubuntu.com/static/devportal_uploaded/f46f0cd3-bb26-4cac-b683-d2550f14ecec-api/apps/qml/sdk-15.04.5/qtquick-modelviewsdata-modelview/images/listview-decorations.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f46f0cd3-bb26-4cac-b683-d2550f14ecec-api\/apps\/qml\/sdk-15.04.5\/qtquick-modelviewsdata-modelview\/images\/listview-decorations.png/..\/..\/media\/listview-decorations.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-section.png https://developer.ubuntu.com/static/devportal_uploaded/5a008645-f248-43d7-ada3-d82322d5e81f-api/apps/qml/sdk-15.04.5/qtquick-modelviewsdata-modelview/images/listview-section.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5a008645-f248-43d7-ada3-d82322d5e81f-api\/apps\/qml\/sdk-15.04.5\/qtquick-modelviewsdata-modelview\/images\/listview-section.png/..\/..\/media\/listview-section.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-setup.png https://developer.ubuntu.com/static/devportal_uploaded/ad89d4f8-9dc3-4202-83e9-569c3a10423d-api/apps/qml/sdk-15.04.5/qtquick-modelviewsdata-modelview/images/listview-setup.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ad89d4f8-9dc3-4202-83e9-569c3a10423d-api\/apps\/qml\/sdk-15.04.5\/qtquick-modelviewsdata-modelview\/images\/listview-setup.png/..\/..\/media\/listview-setup.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater-index.png https://developer.ubuntu.com/static/devportal_uploaded/c7a1247e-cf9e-4baf-b978-76738aaa841b-api/apps/qml/sdk-15.04.5/qtquick-modelviewsdata-modelview/images/repeater-index.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c7a1247e-cf9e-4baf-b978-76738aaa841b-api\/apps\/qml\/sdk-15.04.5\/qtquick-modelviewsdata-modelview\/images\/repeater-index.png/..\/..\/media\/repeater-index.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-mousearea-example.png https://developer.ubuntu.com/static/devportal_uploaded/3bbdeebc-3712-4a22-8a74-1f56ba64cf6a-api/apps/qml/sdk-15.04.5/qtquick-mousearea-example/images/qml-mousearea-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3bbdeebc-3712-4a22-8a74-1f56ba64cf6a-api\/apps\/qml\/sdk-15.04.5\/qtquick-mousearea-example\/images\/qml-mousearea-example.png/..\/..\/media\/qml-mousearea-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-affectors-example.png https://developer.ubuntu.com/static/devportal_uploaded/ec26d0bc-728a-4145-95a6-868f33278b22-api/apps/qml/sdk-15.04.5/qtquick-particles-affectors-example/images/qml-affectors-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ec26d0bc-728a-4145-95a6-868f33278b22-api\/apps\/qml\/sdk-15.04.5\/qtquick-particles-affectors-example\/images\/qml-affectors-example.png/..\/..\/media\/qml-affectors-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-customparticle-example.png https://developer.ubuntu.com/static/devportal_uploaded/ebf543b5-5007-4095-805a-859f9be1eb10-api/apps/qml/sdk-15.04.5/qtquick-particles-customparticle-example/images/qml-customparticle-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ebf543b5-5007-4095-805a-859f9be1eb10-api\/apps\/qml\/sdk-15.04.5\/qtquick-particles-customparticle-example\/images\/qml-customparticle-example.png/..\/..\/media\/qml-customparticle-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-emitters-example.png https://developer.ubuntu.com/static/devportal_uploaded/ed4eca71-c823-4417-a685-a353208d12a5-api/apps/qml/sdk-15.04.5/qtquick-particles-emitters-example/images/qml-emitters-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ed4eca71-c823-4417-a685-a353208d12a5-api\/apps\/qml\/sdk-15.04.5\/qtquick-particles-emitters-example\/images\/qml-emitters-example.png/..\/..\/media\/qml-emitters-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-imageparticle-example.png https://developer.ubuntu.com/static/devportal_uploaded/ad728099-66ed-49ef-b7f5-2033f4e62cec-api/apps/qml/sdk-15.04.5/qtquick-particles-imageparticle-example/images/qml-imageparticle-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ad728099-66ed-49ef-b7f5-2033f4e62cec-api\/apps\/qml\/sdk-15.04.5\/qtquick-particles-imageparticle-example\/images\/qml-imageparticle-example.png/..\/..\/media\/qml-imageparticle-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-system-example.png https://developer.ubuntu.com/static/devportal_uploaded/c9c2d188-9d62-43c1-a741-341ee3558c17-api/apps/qml/sdk-15.04.5/qtquick-particles-system-example/images/qml-system-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c9c2d188-9d62-43c1-a741-341ee3558c17-api\/apps\/qml\/sdk-15.04.5\/qtquick-particles-system-example\/images\/qml-system-example.png/..\/..\/media\/qml-system-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-positioners-example.png https://developer.ubuntu.com/static/devportal_uploaded/064a33f2-7b12-4afb-8f39-77838bdb21a8-api/apps/qml/sdk-15.04.5/qtquick-positioners-example/images/qml-positioners-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/064a33f2-7b12-4afb-8f39-77838bdb21a8-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioners-example\/images\/qml-positioners-example.png/..\/..\/media\/qml-positioners-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edges_qml.png https://developer.ubuntu.com/static/devportal_uploaded/1b92b4fa-03f3-4d39-941c-f7d787b47dbc-api/apps/qml/sdk-15.04.5/qtquick-positioning-anchors/images/edges_qml.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1b92b4fa-03f3-4d39-941c-f7d787b47dbc-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-anchors\/images\/edges_qml.png/..\/..\/media\/edges_qml.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edge1.png https://developer.ubuntu.com/static/devportal_uploaded/bfd63796-7120-4ff0-b60e-2133ee37d267-api/apps/qml/sdk-15.04.5/qtquick-positioning-anchors/images/edge1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bfd63796-7120-4ff0-b60e-2133ee37d267-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-anchors\/images\/edge1.png/..\/..\/media\/edge1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edge3.png https://developer.ubuntu.com/static/devportal_uploaded/e78597c0-7b59-4f5e-8224-46af3e996d5c-api/apps/qml/sdk-15.04.5/qtquick-positioning-anchors/images/edge3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e78597c0-7b59-4f5e-8224-46af3e996d5c-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-anchors\/images\/edge3.png/..\/..\/media\/edge3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edge4.png https://developer.ubuntu.com/static/devportal_uploaded/eed06e84-a1ee-4ce4-9b58-943c6255fafb-api/apps/qml/sdk-15.04.5/qtquick-positioning-anchors/images/edge4.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/eed06e84-a1ee-4ce4-9b58-943c6255fafb-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-anchors\/images\/edge4.png/..\/..\/media\/edge4.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/margins_qml.png https://developer.ubuntu.com/static/devportal_uploaded/a0007019-701c-4160-a76a-3d73adcb1b3d-api/apps/qml/sdk-15.04.5/qtquick-positioning-anchors/images/margins_qml.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a0007019-701c-4160-a76a-3d73adcb1b3d-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-anchors\/images\/margins_qml.png/..\/..\/media\/margins_qml.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edge2.png https://developer.ubuntu.com/static/devportal_uploaded/d401e8fa-8530-412e-97f1-376d6173612d-api/apps/qml/sdk-15.04.5/qtquick-positioning-anchors/images/edge2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d401e8fa-8530-412e-97f1-376d6173612d-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-anchors\/images\/edge2.png/..\/..\/media\/edge2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/anchor_ordering_bad.png https://developer.ubuntu.com/static/devportal_uploaded/ff0cc58e-77f0-41c8-a1d5-ad664703087d-api/apps/qml/sdk-15.04.5/qtquick-positioning-anchors/images/anchor_ordering_bad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ff0cc58e-77f0-41c8-a1d5-ad664703087d-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-anchors\/images\/anchor_ordering_bad.png/..\/..\/media\/anchor_ordering_bad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/anchor_ordering.png https://developer.ubuntu.com/static/devportal_uploaded/cccc5fb1-5639-4c1a-98a5-c16ecf26e271-api/apps/qml/sdk-15.04.5/qtquick-positioning-anchors/images/anchor_ordering.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cccc5fb1-5639-4c1a-98a5-c16ecf26e271-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-anchors\/images\/anchor_ordering.png/..\/..\/media\/anchor_ordering.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-column.png https://developer.ubuntu.com/static/devportal_uploaded/1787f449-3f60-4c02-94e5-b55b774fba84-api/apps/qml/sdk-15.04.5/qtquick-positioning-layouts/images/qml-column.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1787f449-3f60-4c02-94e5-b55b774fba84-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-layouts\/images\/qml-column.png/..\/..\/media\/qml-column.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-row.png https://developer.ubuntu.com/static/devportal_uploaded/373cc3a8-04eb-4e17-831a-f57e076acbff-api/apps/qml/sdk-15.04.5/qtquick-positioning-layouts/images/qml-row.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/373cc3a8-04eb-4e17-831a-f57e076acbff-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-layouts\/images\/qml-row.png/..\/..\/media\/qml-row.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-grid-spacing.png https://developer.ubuntu.com/static/devportal_uploaded/78fd3dcb-ffc9-465f-9da8-5917ce62b7f6-api/apps/qml/sdk-15.04.5/qtquick-positioning-layouts/images/qml-grid-spacing.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/78fd3dcb-ffc9-465f-9da8-5917ce62b7f6-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-layouts\/images\/qml-grid-spacing.png/..\/..\/media\/qml-grid-spacing.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-flow-text2.png https://developer.ubuntu.com/static/devportal_uploaded/9038a09f-458b-4417-a03d-709faf8972b4-api/apps/qml/sdk-15.04.5/qtquick-positioning-layouts/images/qml-flow-text2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9038a09f-458b-4417-a03d-709faf8972b4-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-layouts\/images\/qml-flow-text2.png/..\/..\/media\/qml-flow-text2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/manual-layout.png https://developer.ubuntu.com/static/devportal_uploaded/5faee1f8-48b6-46f8-9b3d-f0ff93c3c450-api/apps/qml/sdk-15.04.5/qtquick-positioning-topic/images/manual-layout.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5faee1f8-48b6-46f8-9b3d-f0ff93c3c450-api\/apps\/qml\/sdk-15.04.5\/qtquick-positioning-topic\/images\/manual-layout.png/..\/..\/media\/manual-layout.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquickwidgets-example.png https://developer.ubuntu.com/static/devportal_uploaded/27c556c9-1c25-43cc-a933-97c410f6743e-api/apps/qml/sdk-15.04.5/qtquick-quickwidgets-quickwidget-example/images/qtquickwidgets-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/27c556c9-1c25-43cc-a933-97c410f6743e-api\/apps\/qml\/sdk-15.04.5\/qtquick-quickwidgets-quickwidget-example\/images\/qtquickwidgets-example.png/..\/..\/media\/qtquickwidgets-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/rendercontrol-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/d54f3a7e-349a-4d8c-8b75-41fbabe228c6-api/apps/qml/sdk-15.04.5/qtquick-rendercontrol-example/images/rendercontrol-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d54f3a7e-349a-4d8c-8b75-41fbabe228c6-api\/apps\/qml\/sdk-15.04.5\/qtquick-rendercontrol-example\/images\/rendercontrol-example.jpg/..\/..\/media\/rendercontrol-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-righttoleft-example.png https://developer.ubuntu.com/static/devportal_uploaded/e4e5b8df-8b27-439c-a7b5-e8b175d02bd7-api/apps/qml/sdk-15.04.5/qtquick-righttoleft-example/images/qml-righttoleft-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e4e5b8df-8b27-439c-a7b5-e8b175d02bd7-api\/apps\/qml\/sdk-15.04.5\/qtquick-righttoleft-example\/images\/qml-righttoleft-example.png/..\/..\/media\/qml-righttoleft-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/custom-geometry-example.png https://developer.ubuntu.com/static/devportal_uploaded/5dfe22a6-cb70-4911-9084-983bb5ed8cf0-api/apps/qml/sdk-15.04.5/qtquick-scenegraph-customgeometry-example/images/custom-geometry-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5dfe22a6-cb70-4911-9084-983bb5ed8cf0-api\/apps\/qml\/sdk-15.04.5\/qtquick-scenegraph-customgeometry-example\/images\/custom-geometry-example.png/..\/..\/media\/custom-geometry-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/graph-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/f1d907a9-db2b-4358-98b6-81452447b1eb-api/apps/qml/sdk-15.04.5/qtquick-scenegraph-graph-example/images/graph-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f1d907a9-db2b-4358-98b6-81452447b1eb-api\/apps\/qml\/sdk-15.04.5\/qtquick-scenegraph-graph-example\/images\/graph-example.jpg/..\/..\/media\/graph-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/openglunderqml-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/59193aa2-4278-42ee-9a30-b9d87be79ec4-api/apps/qml/sdk-15.04.5/qtquick-scenegraph-openglunderqml-example/images/openglunderqml-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/59193aa2-4278-42ee-9a30-b9d87be79ec4-api\/apps\/qml\/sdk-15.04.5\/qtquick-scenegraph-openglunderqml-example\/images\/openglunderqml-example.jpg/..\/..\/media\/openglunderqml-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simplematerial-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/893e2165-48a3-4b3e-a746-d5d7c72a85f7-api/apps/qml/sdk-15.04.5/qtquick-scenegraph-simplematerial-example/images/simplematerial-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/893e2165-48a3-4b3e-a746-d5d7c72a85f7-api\/apps\/qml\/sdk-15.04.5\/qtquick-scenegraph-simplematerial-example\/images\/simplematerial-example.jpg/..\/..\/media\/simplematerial-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/textureinsgnode-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/7cc7deaa-aae7-4e48-8e47-1b730fed17ac-api/apps/qml/sdk-15.04.5/qtquick-scenegraph-textureinsgnode-example/images/textureinsgnode-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7cc7deaa-aae7-4e48-8e47-1b730fed17ac-api\/apps\/qml\/sdk-15.04.5\/qtquick-scenegraph-textureinsgnode-example\/images\/textureinsgnode-example.jpg/..\/..\/media\/textureinsgnode-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/textureinthread-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/df9f205e-eaa5-48a8-a83d-f20ad23e2db7-api/apps/qml/sdk-15.04.5/qtquick-scenegraph-textureinthread-example/images/textureinthread-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/df9f205e-eaa5-48a8-a83d-f20ad23e2db7-api\/apps\/qml\/sdk-15.04.5\/qtquick-scenegraph-textureinthread-example\/images\/textureinthread-example.jpg/..\/..\/media\/textureinthread-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/twotextureproviders-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/9b3120f3-0531-4d1b-be5a-18f712797189-api/apps/qml/sdk-15.04.5/qtquick-scenegraph-twotextureproviders-example/images/twotextureproviders-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9b3120f3-0531-4d1b-be5a-18f712797189-api\/apps\/qml\/sdk-15.04.5\/qtquick-scenegraph-twotextureproviders-example\/images\/twotextureproviders-example.jpg/..\/..\/media\/twotextureproviders-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-shadereffects-example.png https://developer.ubuntu.com/static/devportal_uploaded/19372ec8-84b9-4d37-9966-d4a8be22881f-api/apps/qml/sdk-15.04.5/qtquick-shadereffects-example/images/qml-shadereffects-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/19372ec8-84b9-4d37-9966-d4a8be22881f-api\/apps\/qml\/sdk-15.04.5\/qtquick-shadereffects-example\/images\/qml-shadereffects-example.png/..\/..\/media\/qml-shadereffects-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-text-example.png https://developer.ubuntu.com/static/devportal_uploaded/3f3696b0-62dd-445e-94a5-0c603ef23e5c-api/apps/qml/sdk-15.04.5/qtquick-text-example/images/qml-text-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3f3696b0-62dd-445e-94a5-0c603ef23e5c-api\/apps\/qml\/sdk-15.04.5\/qtquick-text-example\/images\/qml-text-example.png/..\/..\/media\/qml-text-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-threading-example.png https://developer.ubuntu.com/static/devportal_uploaded/1a25804e-e751-4c33-89a7-b3bbc8660b9f-api/apps/qml/sdk-15.04.5/qtquick-threading-example/images/qml-threading-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1a25804e-e751-4c33-89a7-b3bbc8660b9f-api\/apps\/qml\/sdk-15.04.5\/qtquick-threading-example\/images\/qml-threading-example.png/..\/..\/media\/qml-threading-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-touchinteraction-example.png https://developer.ubuntu.com/static/devportal_uploaded/cfdf5005-6e65-4040-a232-7bc10d6ea4a0-api/apps/qml/sdk-15.04.5/qtquick-touchinteraction-example/images/qml-touchinteraction-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cfdf5005-6e65-4040-a232-7bc10d6ea4a0-api\/apps\/qml\/sdk-15.04.5\/qtquick-touchinteraction-example\/images\/qml-touchinteraction-example.png/..\/..\/media\/qml-touchinteraction-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-adv-tutorial1.png https://developer.ubuntu.com/static/devportal_uploaded/156fd278-4bb6-4c8b-8b1a-3e042831c6d8-api/apps/qml/sdk-15.04.5/qtquick-tutorials-samegame-samegame1-example/images/declarative-adv-tutorial1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/156fd278-4bb6-4c8b-8b1a-3e042831c6d8-api\/apps\/qml\/sdk-15.04.5\/qtquick-tutorials-samegame-samegame1-example\/images\/declarative-adv-tutorial1.png/..\/..\/media\/declarative-adv-tutorial1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-adv-tutorial2.png https://developer.ubuntu.com/static/devportal_uploaded/11ccb69d-1321-4237-af22-0b6f809bdd21-api/apps/qml/sdk-15.04.5/qtquick-tutorials-samegame-samegame2-example/images/declarative-adv-tutorial2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/11ccb69d-1321-4237-af22-0b6f809bdd21-api\/apps\/qml\/sdk-15.04.5\/qtquick-tutorials-samegame-samegame2-example\/images\/declarative-adv-tutorial2.png/..\/..\/media\/declarative-adv-tutorial2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-adv-tutorial3.png https://developer.ubuntu.com/static/devportal_uploaded/717037a0-a0d3-4486-92f5-92d5417b30d4-api/apps/qml/sdk-15.04.5/qtquick-tutorials-samegame-samegame3-example/images/declarative-adv-tutorial3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/717037a0-a0d3-4486-92f5-92d5417b30d4-api\/apps\/qml\/sdk-15.04.5\/qtquick-tutorials-samegame-samegame3-example\/images\/declarative-adv-tutorial3.png/..\/..\/media\/declarative-adv-tutorial3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-adv-tutorial4.gif https://developer.ubuntu.com/static/devportal_uploaded/8f788555-3192-4531-9ba3-0538784ffa34-api/apps/qml/sdk-15.04.5/qtquick-tutorials-samegame-samegame4-example/images/declarative-adv-tutorial4.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8f788555-3192-4531-9ba3-0538784ffa34-api\/apps\/qml\/sdk-15.04.5\/qtquick-tutorials-samegame-samegame4-example\/images\/declarative-adv-tutorial4.gif/..\/..\/media\/declarative-adv-tutorial4.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-modelviews-example.png https://developer.ubuntu.com/static/devportal_uploaded/b396920c-8bf0-45fa-aab8-e95f5b748802-api/apps/qml/sdk-15.04.5/qtquick-views-example/images/qml-modelviews-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b396920c-8bf0-45fa-aab8-e95f5b748802-api\/apps\/qml\/sdk-15.04.5\/qtquick-views-example\/images\/qml-modelviews-example.png/..\/..\/media\/qml-modelviews-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visual-coordinates-example.png https://developer.ubuntu.com/static/devportal_uploaded/349ff979-f5f3-411d-b978-1c7a81d85f6c-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-coordinates/images/visual-coordinates-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/349ff979-f5f3-411d-b978-1c7a81d85f6c-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-coordinates\/images\/visual-coordinates-example.png/..\/..\/media\/visual-coordinates-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sg-renderloop-threaded.jpg https://developer.ubuntu.com/static/devportal_uploaded/1c3b258c-fd83-4482-9109-c9afd1b88154-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-scenegraph/images/sg-renderloop-threaded.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1c3b258c-fd83-4482-9109-c9afd1b88154-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-scenegraph\/images\/sg-renderloop-threaded.jpg/..\/..\/media\/sg-renderloop-threaded.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sg-renderloop-singlethreaded.jpg https://developer.ubuntu.com/static/devportal_uploaded/d0cf3273-d9ba-4595-82f7-ab1fe9ebe9cb-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-scenegraph/images/sg-renderloop-singlethreaded.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d0cf3273-d9ba-4595-82f7-ab1fe9ebe9cb-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-scenegraph\/images\/sg-renderloop-singlethreaded.jpg/..\/..\/media\/sg-renderloop-singlethreaded.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualcanvas_list.png https://developer.ubuntu.com/static/devportal_uploaded/ece5ac28-168e-40f5-8386-cf743accc7ab-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-scenegraph-renderer/images/visualcanvas_list.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ece5ac28-168e-40f5-8386-cf743accc7ab-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualcanvas_list.png/..\/..\/media\/visualcanvas_list.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualcanvas_overlap.png https://developer.ubuntu.com/static/devportal_uploaded/176c71c4-9b32-408a-a4f4-d4c5e3cfd07e-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-scenegraph-renderer/images/visualcanvas_overlap.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/176c71c4-9b32-408a-a4f4-d4c5e3cfd07e-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualcanvas_overlap.png/..\/..\/media\/visualcanvas_overlap.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualize-original.png https://developer.ubuntu.com/static/devportal_uploaded/09b8a7b7-eb96-4dde-a374-51421f56e374-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-scenegraph-renderer/images/visualize-original.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/09b8a7b7-eb96-4dde-a374-51421f56e374-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualize-original.png/..\/..\/media\/visualize-original.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualize-batches.png https://developer.ubuntu.com/static/devportal_uploaded/b0cbc2b6-99c8-42f8-a1c6-4b2211a4239c-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-scenegraph-renderer/images/visualize-batches.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b0cbc2b6-99c8-42f8-a1c6-4b2211a4239c-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualize-batches.png/..\/..\/media\/visualize-batches.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualize-clip.png https://developer.ubuntu.com/static/devportal_uploaded/b7f6a746-1995-4b58-95c3-5a5f8e39c25f-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-scenegraph-renderer/images/visualize-clip.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b7f6a746-1995-4b58-95c3-5a5f8e39c25f-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualize-clip.png/..\/..\/media\/visualize-clip.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualize-overdraw-2.png https://developer.ubuntu.com/static/devportal_uploaded/f22e7832-2773-445e-bc6d-92a29e6741e6-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-scenegraph-renderer/images/visualize-overdraw-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f22e7832-2773-445e-bc6d-92a29e6741e6-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualize-overdraw-2.png/..\/..\/media\/visualize-overdraw-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visual-parent-example.png https://developer.ubuntu.com/static/devportal_uploaded/356f3c2a-eb7a-4e61-a88f-211eba06e091-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-visualparent/images/visual-parent-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/356f3c2a-eb7a-4e61-a88f-211eba06e091-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-visualparent\/images\/visual-parent-example.png/..\/..\/media\/visual-parent-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visual-parent-example2.png https://developer.ubuntu.com/static/devportal_uploaded/dcd129ea-3fea-424c-838e-81f609a9c6fe-api/apps/qml/sdk-15.04.5/qtquick-visualcanvas-visualparent/images/visual-parent-example2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dcd129ea-3fea-424c-838e-81f609a9c6fe-api\/apps\/qml\/sdk-15.04.5\/qtquick-visualcanvas-visualparent\/images\/visual-parent-example2.png/..\/..\/media\/visual-parent-example2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-window-example.png https://developer.ubuntu.com/static/devportal_uploaded/d0cefcc7-6474-491c-a40c-54e79a91da1c-api/apps/qml/sdk-15.04.5/qtquick-window-example/images/qml-window-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d0cefcc7-6474-491c-a40c-54e79a91da1c-api\/apps\/qml\/sdk-15.04.5\/qtquick-window-example\/images\/qml-window-example.png/..\/..\/media\/qml-window-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-rect.png https://developer.ubuntu.com/static/devportal_uploaded/66e4baed-5bdf-4a26-a618-38afa850c0b5-api/apps/qml/sdk-15.04.5/QtQuick.Rectangle/images/declarative-rect.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/66e4baed-5bdf-4a26-a618-38afa850c0b5-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Rectangle\/images\/declarative-rect.png/..\/..\/media\/declarative-rect.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/rect-color.png https://developer.ubuntu.com/static/devportal_uploaded/937aef2b-c243-49eb-860b-663be73da2c2-api/apps/qml/sdk-15.04.5/QtQuick.Rectangle/images/rect-color.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/937aef2b-c243-49eb-860b-663be73da2c2-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Rectangle\/images\/rect-color.png/..\/..\/media\/rect-color.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-rect_gradient.png https://developer.ubuntu.com/static/devportal_uploaded/a615a49d-9ac6-43d1-8f7f-88c6cfc85015-api/apps/qml/sdk-15.04.5/QtQuick.Rectangle/images/declarative-rect_gradient.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a615a49d-9ac6-43d1-8f7f-88c6cfc85015-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Rectangle\/images\/declarative-rect_gradient.png/..\/..\/media\/declarative-rect_gradient.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater-simple.png https://developer.ubuntu.com/static/devportal_uploaded/6ccc5089-25f6-4290-92fa-cb589e1731eb-api/apps/qml/sdk-15.04.5/QtQuick.Repeater/images/repeater-simple.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6ccc5089-25f6-4290-92fa-cb589e1731eb-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Repeater\/images\/repeater-simple.png/..\/..\/media\/repeater-simple.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater.png https://developer.ubuntu.com/static/devportal_uploaded/5c790cbc-16af-4d05-a217-0840706dde7f-api/apps/qml/sdk-15.04.5/QtQuick.Repeater/images/repeater.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5c790cbc-16af-4d05-a217-0840706dde7f-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Repeater\/images\/repeater.png/..\/..\/media\/repeater.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater-index.png https://developer.ubuntu.com/static/devportal_uploaded/3204f232-afb5-4d12-a177-ffce5bbda402-api/apps/qml/sdk-15.04.5/QtQuick.Repeater/images/repeater-index.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3204f232-afb5-4d12-a177-ffce5bbda402-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Repeater\/images\/repeater-index.png/..\/..\/media\/repeater-index.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater-modeldata.png https://developer.ubuntu.com/static/devportal_uploaded/f4cd1693-e590-4029-9a52-5747a08862b8-api/apps/qml/sdk-15.04.5/QtQuick.Repeater/images/repeater-modeldata.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f4cd1693-e590-4029-9a52-5747a08862b8-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Repeater\/images\/repeater-modeldata.png/..\/..\/media\/repeater-modeldata.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/axisrotation.png https://developer.ubuntu.com/static/devportal_uploaded/1a9b65a7-146a-40a8-ba60-35bd96b220c0-api/apps/qml/sdk-15.04.5/QtQuick.Rotation/images/axisrotation.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1a9b65a7-146a-40a8-ba60-35bd96b220c0-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Rotation\/images\/axisrotation.png/..\/..\/media\/axisrotation.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/3d-rotation-axis.png https://developer.ubuntu.com/static/devportal_uploaded/e987f872-941e-464b-91b3-c9a98057a541-api/apps/qml/sdk-15.04.5/QtQuick.Rotation/images/3d-rotation-axis.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e987f872-941e-464b-91b3-c9a98057a541-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Rotation\/images\/3d-rotation-axis.png/..\/..\/media\/3d-rotation-axis.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/horizontalpositioner_example.png https://developer.ubuntu.com/static/devportal_uploaded/e0699b54-4236-420f-b477-63498cba8775-api/apps/qml/sdk-15.04.5/QtQuick.Row/images/horizontalpositioner_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e0699b54-4236-420f-b477-63498cba8775-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Row\/images\/horizontalpositioner_example.png/..\/..\/media\/horizontalpositioner_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-shadereffectitem.png https://developer.ubuntu.com/static/devportal_uploaded/a163bc90-b398-4106-a3cf-22834e12a825-api/apps/qml/sdk-15.04.5/QtQuick.ShaderEffect/images/declarative-shadereffectitem.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a163bc90-b398-4106-a3cf-22834e12a825-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ShaderEffect\/images\/declarative-shadereffectitem.png/..\/..\/media\/declarative-shadereffectitem.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-shadereffect-layereffect.png https://developer.ubuntu.com/static/devportal_uploaded/90c7affe-2633-4ebb-a606-18ca05639c11-api/apps/qml/sdk-15.04.5/QtQuick.ShaderEffect/images/qml-shadereffect-layereffect.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/90c7affe-2633-4ebb-a606-18ca05639c11-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ShaderEffect\/images\/qml-shadereffect-layereffect.png/..\/..\/media\/qml-shadereffect-layereffect.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-shadereffect-opacitymask.png https://developer.ubuntu.com/static/devportal_uploaded/87f996ce-8618-49ce-b312-1b3dda08d2d4-api/apps/qml/sdk-15.04.5/QtQuick.ShaderEffect/images/qml-shadereffect-opacitymask.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/87f996ce-8618-49ce-b312-1b3dda08d2d4-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ShaderEffect\/images\/qml-shadereffect-opacitymask.png/..\/..\/media\/qml-shadereffect-opacitymask.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-shadereffectsource.png https://developer.ubuntu.com/static/devportal_uploaded/156d38e6-460c-4729-bd3e-339f6cc4b4c2-api/apps/qml/sdk-15.04.5/QtQuick.ShaderEffectSource/images/declarative-shadereffectsource.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/156d38e6-460c-4729-bd3e-339f6cc4b4c2-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ShaderEffectSource\/images\/declarative-shadereffectsource.png/..\/..\/media\/declarative-shadereffectsource.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-text.png https://developer.ubuntu.com/static/devportal_uploaded/75df8567-5c8f-4ed8-8e70-30c16654c4f2-api/apps/qml/sdk-15.04.5/QtQuick.Text/images/declarative-text.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/75df8567-5c8f-4ed8-8e70-30c16654c4f2-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Text\/images\/declarative-text.png/..\/..\/media\/declarative-text.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textstyle.png https://developer.ubuntu.com/static/devportal_uploaded/542ee41d-717c-4627-a1bf-91afb6852b8f-api/apps/qml/sdk-15.04.5/QtQuick.Text/images/declarative-textstyle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/542ee41d-717c-4627-a1bf-91afb6852b8f-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Text\/images\/declarative-textstyle.png/..\/..\/media\/declarative-textstyle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textformat.png https://developer.ubuntu.com/static/devportal_uploaded/540c90fc-2b90-4796-bac6-bb0a92f1281d-api/apps/qml/sdk-15.04.5/QtQuick.Text/images/declarative-textformat.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/540c90fc-2b90-4796-bac6-bb0a92f1281d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Text\/images\/declarative-textformat.png/..\/..\/media\/declarative-textformat.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textedit.gif https://developer.ubuntu.com/static/devportal_uploaded/970ad443-7088-46b5-8bcc-d42d47c515e2-api/apps/qml/sdk-15.04.5/QtQuick.TextEdit/images/declarative-textedit.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/970ad443-7088-46b5-8bcc-d42d47c515e2-api\/apps\/qml\/sdk-15.04.5\/QtQuick.TextEdit\/images\/declarative-textedit.gif/..\/..\/media\/declarative-textedit.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textformat.png https://developer.ubuntu.com/static/devportal_uploaded/534b3be2-0e16-47b4-bafd-1f4d72bff7be-api/apps/qml/sdk-15.04.5/QtQuick.TextEdit/images/declarative-textformat.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/534b3be2-0e16-47b4-bafd-1f4d72bff7be-api\/apps\/qml\/sdk-15.04.5\/QtQuick.TextEdit\/images\/declarative-textformat.png/..\/..\/media\/declarative-textformat.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/translate.png https://developer.ubuntu.com/static/devportal_uploaded/16415974-2cb5-489c-9ac1-a4bf3ad9049d-api/apps/qml/sdk-15.04.5/QtQuick.Translate/images/translate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/16415974-2cb5-489c-9ac1-a4bf3ad9049d-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Translate\/images\/translate.png/..\/..\/media\/translate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-basic.gif https://developer.ubuntu.com/static/devportal_uploaded/01af7362-3f63-490d-b8f7-9a53295816d8-api/apps/qml/sdk-15.04.5/QtQuick.ViewTransition/images/viewtransitions-basic.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/01af7362-3f63-490d-b8f7-9a53295816d8-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ViewTransition\/images\/viewtransitions-basic.gif/..\/..\/media\/viewtransitions-basic.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-delayedbyindex.gif https://developer.ubuntu.com/static/devportal_uploaded/97a07eee-b6ff-45fc-be98-35f70028b3e3-api/apps/qml/sdk-15.04.5/QtQuick.ViewTransition/images/viewtransitions-delayedbyindex.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/97a07eee-b6ff-45fc-be98-35f70028b3e3-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ViewTransition\/images\/viewtransitions-delayedbyindex.gif/..\/..\/media\/viewtransitions-delayedbyindex.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-intermediatemove.gif https://developer.ubuntu.com/static/devportal_uploaded/8d1b99df-2766-4726-9cec-3886577bee2a-api/apps/qml/sdk-15.04.5/QtQuick.ViewTransition/images/viewtransitions-intermediatemove.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8d1b99df-2766-4726-9cec-3886577bee2a-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ViewTransition\/images\/viewtransitions-intermediatemove.gif/..\/..\/media\/viewtransitions-intermediatemove.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-pathanim.gif https://developer.ubuntu.com/static/devportal_uploaded/5f9d2843-807c-4c1a-b6bf-3913fd005b63-api/apps/qml/sdk-15.04.5/QtQuick.ViewTransition/images/viewtransitions-pathanim.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5f9d2843-807c-4c1a-b6bf-3913fd005b63-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ViewTransition\/images\/viewtransitions-pathanim.gif/..\/..\/media\/viewtransitions-pathanim.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-interruptedbad.gif https://developer.ubuntu.com/static/devportal_uploaded/bf70cc36-a8f6-4c9a-81ce-8eb1b8f4c4bb-api/apps/qml/sdk-15.04.5/QtQuick.ViewTransition/images/viewtransitions-interruptedbad.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bf70cc36-a8f6-4c9a-81ce-8eb1b8f4c4bb-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ViewTransition\/images\/viewtransitions-interruptedbad.gif/..\/..\/media\/viewtransitions-interruptedbad.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-interruptedgood.gif https://developer.ubuntu.com/static/devportal_uploaded/3b832d0d-9a32-4403-b4c2-08a7dfa46a52-api/apps/qml/sdk-15.04.5/QtQuick.ViewTransition/images/viewtransitions-interruptedgood.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3b832d0d-9a32-4403-b4c2-08a7dfa46a52-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ViewTransition\/images\/viewtransitions-interruptedgood.gif/..\/..\/media\/viewtransitions-interruptedgood.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-scriptactionbad.gif https://developer.ubuntu.com/static/devportal_uploaded/cde2f4dd-3aaa-402d-b9f3-e590c028d51e-api/apps/qml/sdk-15.04.5/QtQuick.ViewTransition/images/viewtransitions-scriptactionbad.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cde2f4dd-3aaa-402d-b9f3-e590c028d51e-api\/apps\/qml\/sdk-15.04.5\/QtQuick.ViewTransition\/images\/viewtransitions-scriptactionbad.gif/..\/..\/media\/viewtransitions-scriptactionbad.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/screen-and-window-dimensions.jpg https://developer.ubuntu.com/static/devportal_uploaded/12d908ab-0041-4c0b-8694-54ca5ee447e7-api/apps/qml/sdk-15.04.5/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/12d908ab-0041-4c0b-8694-54ca5ee447e7-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Window.Window\/images\/screen-and-window-dimensions.jpg/..\/..\/media\/screen-and-window-dimensions.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/screen-and-window-dimensions.jpg https://developer.ubuntu.com/static/devportal_uploaded/f3c8fcef-9b7e-4896-bccc-fae127797775-api/apps/qml/sdk-15.04.5/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f3c8fcef-9b7e-4896-bccc-fae127797775-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Window.Window\/images\/screen-and-window-dimensions.jpg/..\/..\/media\/screen-and-window-dimensions.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/screen-and-window-dimensions.jpg https://developer.ubuntu.com/static/devportal_uploaded/3524fa38-ea9d-429f-a628-39d1467c3aa0-api/apps/qml/sdk-15.04.5/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3524fa38-ea9d-429f-a628-39d1467c3aa0-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Window.Window\/images\/screen-and-window-dimensions.jpg/..\/..\/media\/screen-and-window-dimensions.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/screen-and-window-dimensions.jpg https://developer.ubuntu.com/static/devportal_uploaded/65819b3f-ef28-440a-9f36-c319386211a6-api/apps/qml/sdk-15.04.5/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/65819b3f-ef28-440a-9f36-c319386211a6-api\/apps\/qml\/sdk-15.04.5\/QtQuick.Window.Window\/images\/screen-and-window-dimensions.jpg/..\/..\/media\/screen-and-window-dimensions.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-xmllistmodel-example.png https://developer.ubuntu.com/static/devportal_uploaded/f0229ed8-797d-4637-b819-29ecfc918931-api/apps/qml/sdk-15.04.5/QtQuick.XmlListModel.XmlListModel/images/qml-xmllistmodel-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f0229ed8-797d-4637-b819-29ecfc918931-api\/apps\/qml\/sdk-15.04.5\/QtQuick.XmlListModel.XmlListModel\/images\/qml-xmllistmodel-example.png/..\/..\/media\/qml-xmllistmodel-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-static.png https://developer.ubuntu.com/static/devportal_uploaded/b75397da-b511-4bac-a656-6e778cb59b5f-api/apps/qml/sdk-15.04.5/dynamic-sensor-backend-registration/images/sensors-static.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b75397da-b511-4bac-a656-6e778cb59b5f-api\/apps\/qml\/sdk-15.04.5\/dynamic-sensor-backend-registration\/images\/sensors-static.png/..\/..\/media\/sensors-static.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-dynamic.png https://developer.ubuntu.com/static/devportal_uploaded/f9c6e117-522b-4cf2-bdd5-db40f5d6554d-api/apps/qml/sdk-15.04.5/dynamic-sensor-backend-registration/images/sensors-dynamic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f9c6e117-522b-4cf2-bdd5-db40f5d6554d-api\/apps\/qml\/sdk-15.04.5\/dynamic-sensor-backend-registration\/images\/sensors-dynamic.png/..\/..\/media\/sensors-dynamic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/accelbubble.png https://developer.ubuntu.com/static/devportal_uploaded/33d4709d-3527-4e22-a76d-2e5a111691ce-api/apps/qml/sdk-15.04.5/qtsensors-accelbubble-example/images/accelbubble.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/33d4709d-3527-4e22-a76d-2e5a111691ce-api\/apps\/qml\/sdk-15.04.5\/qtsensors-accelbubble-example\/images\/accelbubble.png/..\/..\/media\/accelbubble.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-coordinates.jpg https://developer.ubuntu.com/static/devportal_uploaded/bd61bf2a-d23d-4166-a990-a4f08a4776fc-api/apps/qml/sdk-15.04.5/qtsensors-cpp/images/sensors-coordinates.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bd61bf2a-d23d-4166-a990-a4f08a4776fc-api\/apps\/qml\/sdk-15.04.5\/qtsensors-cpp\/images\/sensors-coordinates.jpg/..\/..\/media\/sensors-coordinates.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-coordinates2.jpg https://developer.ubuntu.com/static/devportal_uploaded/b7aca05d-05e2-4482-9cd7-f813b02a6086-api/apps/qml/sdk-15.04.5/qtsensors-cpp/images/sensors-coordinates2.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b7aca05d-05e2-4482-9cd7-f813b02a6086-api\/apps\/qml\/sdk-15.04.5\/qtsensors-cpp\/images\/sensors-coordinates2.jpg/..\/..\/media\/sensors-coordinates2.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-coordinates3.jpg https://developer.ubuntu.com/static/devportal_uploaded/5b9cc138-a4ac-4b9b-af8a-0043f87bc15f-api/apps/qml/sdk-15.04.5/qtsensors-cpp/images/sensors-coordinates3.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5b9cc138-a4ac-4b9b-af8a-0043f87bc15f-api\/apps\/qml\/sdk-15.04.5\/qtsensors-cpp\/images\/sensors-coordinates3.jpg/..\/..\/media\/sensors-coordinates3.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-sides2.jpg https://developer.ubuntu.com/static/devportal_uploaded/acf24de9-f4c7-4cc6-98c6-e12f4190b4e7-api/apps/qml/sdk-15.04.5/qtsensors-cpp/images/sensors-sides2.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/acf24de9-f4c7-4cc6-98c6-e12f4190b4e7-api\/apps\/qml\/sdk-15.04.5\/qtsensors-cpp\/images\/sensors-sides2.jpg/..\/..\/media\/sensors-sides2.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-overview.png https://developer.ubuntu.com/static/devportal_uploaded/8d3601ed-8680-40c4-aca1-bea4b2021887-api/apps/qml/sdk-15.04.5/qtsensors-cpp/images/sensors-overview.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8d3601ed-8680-40c4-aca1-bea4b2021887-api\/apps\/qml\/sdk-15.04.5\/qtsensors-cpp\/images\/sensors-overview.png/..\/..\/media\/sensors-overview.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtsensors-examples-grue.png https://developer.ubuntu.com/static/devportal_uploaded/7042d7c8-be43-45ba-9a7d-32c508c7e916-api/apps/qml/sdk-15.04.5/qtsensors-grue-example/images/qtsensors-examples-grue.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7042d7c8-be43-45ba-9a7d-32c508c7e916-api\/apps\/qml\/sdk-15.04.5\/qtsensors-grue-example\/images\/qtsensors-examples-grue.png/..\/..\/media\/qtsensors-examples-grue.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/maze.png https://developer.ubuntu.com/static/devportal_uploaded/3761a3c8-c9f5-4f65-a8c9-c2eaebd228af-api/apps/qml/sdk-15.04.5/qtsensors-maze-example/images/maze.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3761a3c8-c9f5-4f65-a8c9-c2eaebd228af-api\/apps\/qml\/sdk-15.04.5\/qtsensors-maze-example\/images\/maze.png/..\/..\/media\/maze.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlqtsensors.png https://developer.ubuntu.com/static/devportal_uploaded/2e64085d-f4f4-46f4-94f1-3a549b649c41-api/apps/qml/sdk-15.04.5/qtsensors-qmlqtsensors-example/images/qmlqtsensors.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2e64085d-f4f4-46f4-94f1-3a549b649c41-api\/apps\/qml\/sdk-15.04.5\/qtsensors-qmlqtsensors-example\/images\/qmlqtsensors.png/..\/..\/media\/qmlqtsensors.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtsensors-examples-explorer.png https://developer.ubuntu.com/static/devportal_uploaded/5e30119d-76b3-45b6-8030-d9db149c05e8-api/apps/qml/sdk-15.04.5/qtsensors-sensor-explorer-example/images/qtsensors-examples-explorer.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5e30119d-76b3-45b6-8030-d9db149c05e8-api\/apps\/qml\/sdk-15.04.5\/qtsensors-sensor-explorer-example\/images\/qtsensors-examples-explorer.png/..\/..\/media\/qtsensors-examples-explorer.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensorgesturecpp.png https://developer.ubuntu.com/static/devportal_uploaded/d06cf956-1246-4da6-9467-5a39a296ebc3-api/apps/qml/sdk-15.04.5/qtsensors-sensorgestures-example/images/sensorgesturecpp.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d06cf956-1246-4da6-9467-5a39a296ebc3-api\/apps\/qml\/sdk-15.04.5\/qtsensors-sensorgestures-example\/images\/sensorgesturecpp.png/..\/..\/media\/sensorgesturecpp.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/shakeit.png https://developer.ubuntu.com/static/devportal_uploaded/7038a205-eb6e-486f-8b79-b459588d89ed-api/apps/qml/sdk-15.04.5/qtsensors-shakeit-example/images/shakeit.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7038a205-eb6e-486f-8b79-b459588d89ed-api\/apps\/qml\/sdk-15.04.5\/qtsensors-shakeit-example\/images\/shakeit.png/..\/..\/media\/shakeit.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/SlotsLayout_centerVertically.png https://developer.ubuntu.com/static/devportal_uploaded/1506bbd2-3e0a-47cc-b6f7-f1b1ade5f561-api/apps/qml/sdk-15.04.5/Ubuntu.Components.SlotsLayout/images/SlotsLayout_centerVertically.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1506bbd2-3e0a-47cc-b6f7-f1b1ade5f561-api\/apps\/qml\/sdk-15.04.5\/Ubuntu.Components.SlotsLayout\/images\/SlotsLayout_centerVertically.png/..\/..\/media\/SlotsLayout_centerVertically.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/SlotsLayout_alignToTop.png https://developer.ubuntu.com/static/devportal_uploaded/b9c70519-410a-474e-8102-19a2acf88e43-api/apps/qml/sdk-15.04.5/Ubuntu.Components.SlotsLayout/images/SlotsLayout_alignToTop.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b9c70519-410a-474e-8102-19a2acf88e43-api\/apps\/qml\/sdk-15.04.5\/Ubuntu.Components.SlotsLayout\/images\/SlotsLayout_alignToTop.png/..\/..\/media\/SlotsLayout_alignToTop.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sample-layout.png https://developer.ubuntu.com/static/devportal_uploaded/94542501-e684-43fc-adea-febd6ea840f2-api/apps/qml/sdk-15.04.5/ubuntu-layouts1/images/sample-layout.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/94542501-e684-43fc-adea-febd6ea840f2-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts1\/images\/sample-layout.png/..\/..\/media\/sample-layout.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/default-layout.png https://developer.ubuntu.com/static/devportal_uploaded/158fd514-f46b-47e8-83a9-61f1d14f15c2-api/apps/qml/sdk-15.04.5/ubuntu-layouts2/images/default-layout.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/158fd514-f46b-47e8-83a9-61f1d14f15c2-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts2\/images\/default-layout.png/..\/..\/media\/default-layout.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout1.png https://developer.ubuntu.com/static/devportal_uploaded/43f19fa2-2f5f-42c7-8e67-6e5df534e941-api/apps/qml/sdk-15.04.5/ubuntu-layouts2/images/layout1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/43f19fa2-2f5f-42c7-8e67-6e5df534e941-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts2\/images\/layout1.png/..\/..\/media\/layout1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout2.png https://developer.ubuntu.com/static/devportal_uploaded/07cd8265-65ed-4595-a709-b9bd17d9f13c-api/apps/qml/sdk-15.04.5/ubuntu-layouts3/images/layout2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/07cd8265-65ed-4595-a709-b9bd17d9f13c-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts3\/images\/layout2.png/..\/..\/media\/layout2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout3.png https://developer.ubuntu.com/static/devportal_uploaded/37c57edc-3dc4-4ae0-9e22-256840f8746b-api/apps/qml/sdk-15.04.5/ubuntu-layouts4/images/layout3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/37c57edc-3dc4-4ae0-9e22-256840f8746b-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts4\/images\/layout3.png/..\/..\/media\/layout3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout6.png https://developer.ubuntu.com/static/devportal_uploaded/f6758f33-ddc5-43c3-a172-55f9c4496769-api/apps/qml/sdk-15.04.5/ubuntu-layouts5/images/layout6.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f6758f33-ddc5-43c3-a172-55f9c4496769-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts5\/images\/layout6.png/..\/..\/media\/layout6.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout6-2.png https://developer.ubuntu.com/static/devportal_uploaded/63533016-8466-40ec-90b1-cc7cd28dfc55-api/apps/qml/sdk-15.04.5/ubuntu-layouts5/images/layout6-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/63533016-8466-40ec-90b1-cc7cd28dfc55-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts5\/images\/layout6-2.png/..\/..\/media\/layout6-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout7.png https://developer.ubuntu.com/static/devportal_uploaded/4932721c-9ad7-4c71-bf13-007e6a220eae-api/apps/qml/sdk-15.04.5/ubuntu-layouts6/images/layout7.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4932721c-9ad7-4c71-bf13-007e6a220eae-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts6\/images\/layout7.png/..\/..\/media\/layout7.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout1.png https://developer.ubuntu.com/static/devportal_uploaded/244866db-374b-4019-8d68-e6adec7d29e7-api/apps/qml/sdk-15.04.5/ubuntu-layouts7/images/simple-layout1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/244866db-374b-4019-8d68-e6adec7d29e7-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts7\/images\/simple-layout1.png/..\/..\/media\/simple-layout1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout2.png https://developer.ubuntu.com/static/devportal_uploaded/535e39ed-d3a5-4feb-af6d-188c231a0dc5-api/apps/qml/sdk-15.04.5/ubuntu-layouts7/images/simple-layout2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/535e39ed-d3a5-4feb-af6d-188c231a0dc5-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts7\/images\/simple-layout2.png/..\/..\/media\/simple-layout2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout3.png https://developer.ubuntu.com/static/devportal_uploaded/40840dc7-ab78-4539-bb41-b2ce9cc1d49e-api/apps/qml/sdk-15.04.5/ubuntu-layouts7/images/simple-layout3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/40840dc7-ab78-4539-bb41-b2ce9cc1d49e-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts7\/images\/simple-layout3.png/..\/..\/media\/simple-layout3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout4.png https://developer.ubuntu.com/static/devportal_uploaded/6fce9bd3-c40b-42f1-9b5a-bf4c76150555-api/apps/qml/sdk-15.04.5/ubuntu-layouts7/images/simple-layout4.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6fce9bd3-c40b-42f1-9b5a-bf4c76150555-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts7\/images\/simple-layout4.png/..\/..\/media\/simple-layout4.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout5.png https://developer.ubuntu.com/static/devportal_uploaded/0e0ee815-d859-4f4c-821e-dc03a3573110-api/apps/qml/sdk-15.04.5/ubuntu-layouts7/images/simple-layout5.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0e0ee815-d859-4f4c-821e-dc03a3573110-api\/apps\/qml\/sdk-15.04.5\/ubuntu-layouts7\/images\/simple-layout5.png/..\/..\/media\/simple-layout5.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/surudark-theme.png https://developer.ubuntu.com/static/devportal_uploaded/9f9893dc-01aa-4819-89bd-e40f78b49e78-api/apps/qml/sdk-15.04.5/ubuntu-theming-themes/images/surudark-theme.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9f9893dc-01aa-4819-89bd-e40f78b49e78-api\/apps\/qml\/sdk-15.04.5\/ubuntu-theming-themes\/images\/surudark-theme.png/..\/..\/media\/surudark-theme.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/surudark-theme-13.png https://developer.ubuntu.com/static/devportal_uploaded/afcd1edb-c390-40e1-8078-10be913e48cc-api/apps/qml/sdk-15.04.5/ubuntu-theming-themes/images/surudark-theme-13.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/afcd1edb-c390-40e1-8078-10be913e48cc-api\/apps\/qml\/sdk-15.04.5\/ubuntu-theming-themes\/images\/surudark-theme-13.png/..\/..\/media\/surudark-theme-13.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/places-list.png https://developer.ubuntu.com/static/devportal_uploaded/83a3d51e-3b66-4934-8d36-49d205587fba-api/apps/qml/sdk-15.04.1/location-places-qml/images/places-list.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/83a3d51e-3b66-4934-8d36-49d205587fba-api\/apps\/qml\/sdk-15.04.1\/location-places-qml\/images\/places-list.png/..\/..\/media\/places-list.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/places-map.jpg https://developer.ubuntu.com/static/devportal_uploaded/1cf25225-6c8f-4d72-a945-5564b3fd0a7d-api/apps/qml/sdk-15.04.1/location-places-qml/images/places-map.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1cf25225-6c8f-4d72-a945-5564b3fd0a7d-api\/apps\/qml\/sdk-15.04.1\/location-places-qml\/images\/places-map.jpg/..\/..\/media\/places-map.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-map.png https://developer.ubuntu.com/static/devportal_uploaded/e9f72b88-8f7c-498f-99fd-ca18f7c3df2c-api/apps/qml/sdk-15.04.1/QtLocation.Map/images/api-map.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e9f72b88-8f7c-498f-99fd-ca18f7c3df2c-api\/apps\/qml\/sdk-15.04.1\/QtLocation.Map\/images\/api-map.png/..\/..\/media\/api-map.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mapcircle.png https://developer.ubuntu.com/static/devportal_uploaded/84ec85dd-71d4-4ef2-bbdc-ed2ff1cf5bc5-api/apps/qml/sdk-15.04.1/QtLocation.MapCircle/images/api-mapcircle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/84ec85dd-71d4-4ef2-bbdc-ed2ff1cf5bc5-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapCircle\/images\/api-mapcircle.png/..\/..\/media\/api-mapcircle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mappolygon.png https://developer.ubuntu.com/static/devportal_uploaded/29a2920b-1ce7-48db-96e5-c81cae609c77-api/apps/qml/sdk-15.04.1/QtLocation.MapPolygon/images/api-mappolygon.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/29a2920b-1ce7-48db-96e5-c81cae609c77-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapPolygon\/images\/api-mappolygon.png/..\/..\/media\/api-mappolygon.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mappolyline.png https://developer.ubuntu.com/static/devportal_uploaded/326be5b3-39db-447f-b29e-686b39f47fe5-api/apps/qml/sdk-15.04.1/QtLocation.MapPolyline/images/api-mappolyline.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/326be5b3-39db-447f-b29e-686b39f47fe5-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapPolyline\/images\/api-mappolyline.png/..\/..\/media\/api-mappolyline.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mapquickitem.png https://developer.ubuntu.com/static/devportal_uploaded/25dc5576-cab8-47b0-b5ad-283091110cc7-api/apps/qml/sdk-15.04.1/QtLocation.MapQuickItem/images/api-mapquickitem.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/25dc5576-cab8-47b0-b5ad-283091110cc7-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapQuickItem\/images\/api-mapquickitem.png/..\/..\/media\/api-mapquickitem.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-mapquickitem-anchor.png https://developer.ubuntu.com/static/devportal_uploaded/b69ec52f-c5a9-4581-88e2-c819f40d97ba-api/apps/qml/sdk-15.04.1/QtLocation.MapQuickItem/images/api-mapquickitem-anchor.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b69ec52f-c5a9-4581-88e2-c819f40d97ba-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapQuickItem\/images\/api-mapquickitem-anchor.png/..\/..\/media\/api-mapquickitem-anchor.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/api-maprectangle.png https://developer.ubuntu.com/static/devportal_uploaded/bddd67c8-f5f1-4518-bb46-08d1bcbb8201-api/apps/qml/sdk-15.04.1/QtLocation.MapRectangle/images/api-maprectangle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bddd67c8-f5f1-4518-bb46-08d1bcbb8201-api\/apps\/qml\/sdk-15.04.1\/QtLocation.MapRectangle\/images\/api-maprectangle.png/..\/..\/media\/api-maprectangle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/example-mapviewer.png https://developer.ubuntu.com/static/devportal_uploaded/011bd6d2-c505-42c3-8044-175a014ac70f-api/apps/qml/sdk-15.04.1/qtlocation-mapviewer-example/images/example-mapviewer.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/011bd6d2-c505-42c3-8044-175a014ac70f-api\/apps\/qml\/sdk-15.04.1\/qtlocation-mapviewer-example\/images\/example-mapviewer.png/..\/..\/media\/example-mapviewer.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-places.png https://developer.ubuntu.com/static/devportal_uploaded/cbfbec21-e6e6-4201-b72d-0838c7b4ebaa-api/apps/qml/sdk-15.04.1/qtlocation-places-example/images/qml-places.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cbfbec21-e6e6-4201-b72d-0838c7b4ebaa-api\/apps\/qml\/sdk-15.04.1\/qtlocation-places-example\/images\/qml-places.png/..\/..\/media\/qml-places.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/places-list.png https://developer.ubuntu.com/static/devportal_uploaded/f87d87d6-a456-4cf4-a3e7-cbc4a562f964-api/apps/qml/sdk-15.04.1/qtlocation-places-list-example/images/places-list.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f87d87d6-a456-4cf4-a3e7-cbc4a562f964-api\/apps\/qml\/sdk-15.04.1\/qtlocation-places-list-example\/images\/places-list.png/..\/..\/media\/places-list.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/places-map.jpg https://developer.ubuntu.com/static/devportal_uploaded/666ee216-9e3a-41be-b553-7db4e8c25a94-api/apps/qml/sdk-15.04.1/qtlocation-places-map-example/images/places-map.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/666ee216-9e3a-41be-b553-7db4e8c25a94-api\/apps\/qml\/sdk-15.04.1\/qtlocation-places-map-example\/images\/places-map.jpg/..\/..\/media\/places-map.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/audiodevices.png https://developer.ubuntu.com/static/devportal_uploaded/276587d0-f16c-482a-8124-db95ab45cfd2-api/apps/qml/sdk-15.04.6/qtmultimedia-audiodevices-example/images/audiodevices.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/276587d0-f16c-482a-8124-db95ab45cfd2-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-audiodevices-example\/images\/audiodevices.png/..\/..\/media\/audiodevices.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/audioinput-example.png https://developer.ubuntu.com/static/devportal_uploaded/6ad831df-13dd-46a4-b3aa-ffc3ee902b7f-api/apps/qml/sdk-15.04.6/qtmultimedia-audioinput-example/images/audioinput-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6ad831df-13dd-46a4-b3aa-ffc3ee902b7f-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-audioinput-example\/images\/audioinput-example.png/..\/..\/media\/audioinput-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/audiooutput-example.png https://developer.ubuntu.com/static/devportal_uploaded/23b94569-ad63-442d-90dd-95a644470512-api/apps/qml/sdk-15.04.6/qtmultimedia-audiooutput-example/images/audiooutput-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/23b94569-ad63-442d-90dd-95a644470512-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-audiooutput-example\/images\/audiooutput-example.png/..\/..\/media\/audiooutput-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/audiorecorder.png https://developer.ubuntu.com/static/devportal_uploaded/a1b384eb-2a7a-4fd5-a80f-850f9d17f1d1-api/apps/qml/sdk-15.04.6/qtmultimedia-audiorecorder-example/images/audiorecorder.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a1b384eb-2a7a-4fd5-a80f-850f9d17f1d1-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-audiorecorder-example\/images\/audiorecorder.png/..\/..\/media\/audiorecorder.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-camera.png https://developer.ubuntu.com/static/devportal_uploaded/4441d14e-5f87-411c-8c97-d0654f4a2a41-api/apps/qml/sdk-15.04.6/qtmultimedia-declarative-camera-example/images/qml-camera.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4441d14e-5f87-411c-8c97-d0654f4a2a41-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-declarative-camera-example\/images\/qml-camera.png/..\/..\/media\/qml-camera.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/spectrum-demo.png https://developer.ubuntu.com/static/devportal_uploaded/a16051a5-0a4b-4962-a172-5cbc5d936867-api/apps/qml/sdk-15.04.6/qtmultimedia-spectrum-example/images/spectrum-demo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a16051a5-0a4b-4962-a172-5cbc5d936867-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-spectrum-example\/images\/spectrum-demo.png/..\/..\/media\/spectrum-demo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideo-overlay.jpg https://developer.ubuntu.com/static/devportal_uploaded/a12e395b-bd6e-404e-8fe2-68d753440dc3-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideo-example/images/qmlvideo-overlay.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a12e395b-bd6e-404e-8fe2-68d753440dc3-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideo-example\/images\/qmlvideo-overlay.jpg/..\/..\/media\/qmlvideo-overlay.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideo-menu.jpg https://developer.ubuntu.com/static/devportal_uploaded/ee553493-9f9e-49c9-b5cc-bcfbd2444691-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideo-example/images/qmlvideo-menu.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ee553493-9f9e-49c9-b5cc-bcfbd2444691-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideo-example\/images\/qmlvideo-menu.jpg/..\/..\/media\/qmlvideo-menu.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/video-qml-paint-rate.png https://developer.ubuntu.com/static/devportal_uploaded/3974ff76-21e2-4c5d-93ff-9fda105e1b14-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideo-example/images/video-qml-paint-rate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3974ff76-21e2-4c5d-93ff-9fda105e1b14-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideo-example\/images\/video-qml-paint-rate.png/..\/..\/media\/video-qml-paint-rate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-video-edgedetection.jpg https://developer.ubuntu.com/static/devportal_uploaded/f45df80e-7308-4ea9-aeb1-927b6c64212f-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-video-edgedetection.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f45df80e-7308-4ea9-aeb1-927b6c64212f-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-video-edgedetection.jpg/..\/..\/media\/qmlvideofx-video-edgedetection.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-video-pagecurl.jpg https://developer.ubuntu.com/static/devportal_uploaded/91b97d62-b368-4121-8017-e87fd7f29d11-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-video-pagecurl.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/91b97d62-b368-4121-8017-e87fd7f29d11-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-video-pagecurl.jpg/..\/..\/media\/qmlvideofx-video-pagecurl.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-camera-glow.jpg https://developer.ubuntu.com/static/devportal_uploaded/820dff9b-a642-44f9-bb75-417c1e0074ca-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-camera-glow.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/820dff9b-a642-44f9-bb75-417c1e0074ca-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-camera-glow.jpg/..\/..\/media\/qmlvideofx-camera-glow.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-camera-wobble.jpg https://developer.ubuntu.com/static/devportal_uploaded/22799b2a-683d-420d-ba7a-7372dd1d7db7-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-camera-wobble.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/22799b2a-683d-420d-ba7a-7372dd1d7db7-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-camera-wobble.jpg/..\/..\/media\/qmlvideofx-camera-wobble.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlvideofx-effects-menu.jpg https://developer.ubuntu.com/static/devportal_uploaded/c2fd4fe4-2534-426a-95e8-5702432c3bae-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideofx-example/images/qmlvideofx-effects-menu.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c2fd4fe4-2534-426a-95e8-5702432c3bae-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideofx-example\/images\/qmlvideofx-effects-menu.jpg/..\/..\/media\/qmlvideofx-effects-menu.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/video-qml-paint-rate.png https://developer.ubuntu.com/static/devportal_uploaded/1d27f729-39ad-46ad-95ae-4278da953142-api/apps/qml/sdk-15.04.6/qtmultimedia-video-qmlvideofx-example/images/video-qml-paint-rate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1d27f729-39ad-46ad-95ae-4278da953142-api\/apps\/qml\/sdk-15.04.6\/qtmultimedia-video-qmlvideofx-example\/images\/video-qml-paint-rate.png/..\/..\/media\/video-qml-paint-rate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/radio-example.png https://developer.ubuntu.com/static/devportal_uploaded/bf1e3a19-38af-4777-bdd3-0d63313cd54e-api/apps/qml/sdk-15.04.6/radiooverview/images/radio-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bf1e3a19-38af-4777-bdd3-0d63313cd54e-api\/apps\/qml\/sdk-15.04.6\/radiooverview\/images\/radio-example.png/..\/..\/media\/radio-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-radio-example.png https://developer.ubuntu.com/static/devportal_uploaded/00f61506-6623-47fe-bfea-b9f2f1f16fe3-api/apps/qml/sdk-15.04.6/radiooverview/images/declarative-radio-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/00f61506-6623-47fe-bfea-b9f2f1f16fe3-api\/apps\/qml\/sdk-15.04.6\/radiooverview\/images\/declarative-radio-example.png/..\/..\/media\/declarative-radio-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listmodel.png https://developer.ubuntu.com/static/devportal_uploaded/0a41d9b6-6c13-471b-a5d1-86274c0e99b9-api/apps/qml/sdk-15.04.6/QtQml.ListModel/images/listmodel.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0a41d9b6-6c13-471b-a5d1-86274c0e99b9-api\/apps\/qml\/sdk-15.04.6\/QtQml.ListModel\/images\/listmodel.png/..\/..\/media\/listmodel.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listmodel-nested.png https://developer.ubuntu.com/static/devportal_uploaded/377a82b2-f74b-4ba7-9426-ab4d8aa77d96-api/apps/qml/sdk-15.04.6/QtQml.ListModel/images/listmodel-nested.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/377a82b2-f74b-4ba7-9426-ab4d8aa77d96-api\/apps\/qml\/sdk-15.04.6\/QtQml.ListModel\/images\/listmodel-nested.png/..\/..\/media\/listmodel-nested.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualitemmodel.png https://developer.ubuntu.com/static/devportal_uploaded/98141b30-082d-4731-91e1-93def57369d2-api/apps/qml/sdk-15.04.6/QtQml.ObjectModel/images/visualitemmodel.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/98141b30-082d-4731-91e1-93def57369d2-api\/apps\/qml\/sdk-15.04.6\/QtQml.ObjectModel\/images\/visualitemmodel.png/..\/..\/media\/visualitemmodel.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-button.png https://developer.ubuntu.com/static/devportal_uploaded/fd5593f9-f4fb-422d-83bc-6ab6988f59f3-api/apps/qml/sdk-15.04.6/qmlstatemachine/images/statemachine-button.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fd5593f9-f4fb-422d-83bc-6ab6988f59f3-api\/apps\/qml\/sdk-15.04.6\/qmlstatemachine\/images\/statemachine-button.png/..\/..\/media\/statemachine-button.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-button-nested.png https://developer.ubuntu.com/static/devportal_uploaded/969d3873-19ee-4d00-aecd-dde6f5279326-api/apps/qml/sdk-15.04.6/qmlstatemachine/images/statemachine-button-nested.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/969d3873-19ee-4d00-aecd-dde6f5279326-api\/apps\/qml\/sdk-15.04.6\/qmlstatemachine\/images\/statemachine-button-nested.png/..\/..\/media\/statemachine-button-nested.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-button-history.png https://developer.ubuntu.com/static/devportal_uploaded/2dc77499-268e-4b72-9e26-85655782f636-api/apps/qml/sdk-15.04.6/qmlstatemachine/images/statemachine-button-history.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2dc77499-268e-4b72-9e26-85655782f636-api\/apps\/qml\/sdk-15.04.6\/qmlstatemachine\/images\/statemachine-button-history.png/..\/..\/media\/statemachine-button-history.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-nonparallel.png https://developer.ubuntu.com/static/devportal_uploaded/d139d916-8036-43d4-9472-ca1bbb7ff36e-api/apps/qml/sdk-15.04.6/qmlstatemachine/images/statemachine-nonparallel.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d139d916-8036-43d4-9472-ca1bbb7ff36e-api\/apps\/qml\/sdk-15.04.6\/qmlstatemachine\/images\/statemachine-nonparallel.png/..\/..\/media\/statemachine-nonparallel.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-parallel.png https://developer.ubuntu.com/static/devportal_uploaded/6b2b711b-aaa1-4952-bca4-cdb3a41c417b-api/apps/qml/sdk-15.04.6/qmlstatemachine/images/statemachine-parallel.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6b2b711b-aaa1-4952-bca4-cdb3a41c417b-api\/apps\/qml\/sdk-15.04.6\/qmlstatemachine\/images\/statemachine-parallel.png/..\/..\/media\/statemachine-parallel.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/statemachine-finished.png https://developer.ubuntu.com/static/devportal_uploaded/d64cfc1b-7641-4147-8f13-5ff6c5f6f761-api/apps/qml/sdk-15.04.6/qmlstatemachine/images/statemachine-finished.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d64cfc1b-7641-4147-8f13-5ff6c5f6f761-api\/apps\/qml\/sdk-15.04.6\/qmlstatemachine\/images\/statemachine-finished.png/..\/..\/media\/statemachine-finished.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-rect_tint.png https://developer.ubuntu.com/static/devportal_uploaded/a4426f29-bf96-4312-b9aa-4599f2e35f69-api/apps/qml/sdk-15.04.6/QtQml.Qt/images/declarative-rect_tint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a4426f29-bf96-4312-b9aa-4599f2e35f69-api\/apps\/qml\/sdk-15.04.6\/QtQml.Qt\/images\/declarative-rect_tint.png/..\/..\/media\/declarative-rect_tint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/documents-definetypes-simple.png https://developer.ubuntu.com/static/devportal_uploaded/36fc4354-63aa-4e23-9cdb-e99c71165d01-api/apps/qml/sdk-15.04.6/qtqml-documents-definetypes/images/documents-definetypes-simple.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/36fc4354-63aa-4e23-9cdb-e99c71165d01-api\/apps\/qml\/sdk-15.04.6\/qtqml-documents-definetypes\/images\/documents-definetypes-simple.png/..\/..\/media\/documents-definetypes-simple.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/documents-definetypes-attributes.png https://developer.ubuntu.com/static/devportal_uploaded/585b6717-ad86-4e23-a950-33b5a5e71ca1-api/apps/qml/sdk-15.04.6/qtqml-documents-definetypes/images/documents-definetypes-attributes.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/585b6717-ad86-4e23-a950-33b5a5e71ca1-api\/apps\/qml\/sdk-15.04.6\/qtqml-documents-definetypes\/images\/documents-definetypes-attributes.png/..\/..\/media\/documents-definetypes-attributes.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-dynamicscene-example.png https://developer.ubuntu.com/static/devportal_uploaded/05dd6662-5ffa-4fb7-a546-1f97687452b9-api/apps/qml/sdk-15.04.6/qtqml-dynamicscene-example/images/qml-dynamicscene-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/05dd6662-5ffa-4fb7-a546-1f97687452b9-api\/apps\/qml\/sdk-15.04.6\/qtqml-dynamicscene-example\/images\/qml-dynamicscene-example.png/..\/..\/media\/qml-dynamicscene-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/button-types.png https://developer.ubuntu.com/static/devportal_uploaded/5110a7ca-2bf1-4007-82d3-b50b9256aa64-api/apps/qml/sdk-15.04.6/qtqml-documents-topic/images/button-types.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5110a7ca-2bf1-4007-82d3-b50b9256aa64-api\/apps\/qml\/sdk-15.04.6\/qtqml-documents-topic\/images\/button-types.png/..\/..\/media\/button-types.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-i18n-example.png https://developer.ubuntu.com/static/devportal_uploaded/b5928ed2-0adc-4923-853b-ede29918e6dc-api/apps/qml/sdk-15.04.6/qtqml-qml-i18n-example/images/qml-i18n-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b5928ed2-0adc-4923-853b-ede29918e6dc-api\/apps\/qml\/sdk-15.04.6\/qtqml-qml-i18n-example\/images\/qml-i18n-example.png/..\/..\/media\/qml-i18n-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-plugins-example.png https://developer.ubuntu.com/static/devportal_uploaded/dfcac944-3096-4ea8-93ee-40dc2dce72d3-api/apps/qml/sdk-15.04.6/qtqml-qmlextensionplugins-example/images/qml-plugins-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dfcac944-3096-4ea8-93ee-40dc2dce72d3-api\/apps\/qml\/sdk-15.04.6\/qtqml-qmlextensionplugins-example\/images\/qml-plugins-example.png/..\/..\/media\/qml-plugins-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtqml-syntax-basics-object-declaration.png https://developer.ubuntu.com/static/devportal_uploaded/ab067fa8-080a-4468-a0f7-82097e259f59-api/apps/qml/sdk-15.04.6/qtqml-syntax-basics/images/qtqml-syntax-basics-object-declaration.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ab067fa8-080a-4468-a0f7-82097e259f59-api\/apps\/qml\/sdk-15.04.6\/qtqml-syntax-basics\/images\/qtqml-syntax-basics-object-declaration.png/..\/..\/media\/qtqml-syntax-basics-object-declaration.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/extending-tutorial-chapter1.png https://developer.ubuntu.com/static/devportal_uploaded/4eca997c-d29d-4311-a8e2-1a3682a83bb9-api/apps/qml/sdk-15.04.6/qtqml-tutorials-extending-qml-example/images/extending-tutorial-chapter1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4eca997c-d29d-4311-a8e2-1a3682a83bb9-api\/apps\/qml\/sdk-15.04.6\/qtqml-tutorials-extending-qml-example\/images\/extending-tutorial-chapter1.png/..\/..\/media\/extending-tutorial-chapter1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/extending-tutorial-chapter2.png https://developer.ubuntu.com/static/devportal_uploaded/ba96093f-5bde-49ee-8991-8735e30b5926-api/apps/qml/sdk-15.04.6/qtqml-tutorials-extending-qml-example/images/extending-tutorial-chapter2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ba96093f-5bde-49ee-8991-8735e30b5926-api\/apps\/qml\/sdk-15.04.6\/qtqml-tutorials-extending-qml-example\/images\/extending-tutorial-chapter2.png/..\/..\/media\/extending-tutorial-chapter2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/extending-tutorial-chapter3.png https://developer.ubuntu.com/static/devportal_uploaded/310c479f-f035-462c-88d8-3d2f34e85dd4-api/apps/qml/sdk-15.04.6/qtqml-tutorials-extending-qml-example/images/extending-tutorial-chapter3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/310c479f-f035-462c-88d8-3d2f34e85dd4-api\/apps\/qml\/sdk-15.04.6\/qtqml-tutorials-extending-qml-example\/images\/extending-tutorial-chapter3.png/..\/..\/media\/extending-tutorial-chapter3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/extending-tutorial-chapter5.png https://developer.ubuntu.com/static/devportal_uploaded/1ed71bc1-6d5a-4fc0-8775-a0199810348c-api/apps/qml/sdk-15.04.6/qtqml-tutorials-extending-qml-example/images/extending-tutorial-chapter5.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1ed71bc1-6d5a-4fc0-8775-a0199810348c-api\/apps\/qml\/sdk-15.04.6\/qtqml-tutorials-extending-qml-example\/images\/extending-tutorial-chapter5.png/..\/..\/media\/extending-tutorial-chapter5.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-xmlhttprequest-example.png https://developer.ubuntu.com/static/devportal_uploaded/09c546ae-9d7d-42bd-ac16-a329b755850e-api/apps/qml/sdk-15.04.6/qtqml-xmlhttprequest-example/images/qml-xmlhttprequest-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/09c546ae-9d7d-42bd-ac16-a329b755850e-api\/apps\/qml\/sdk-15.04.6\/qtqml-xmlhttprequest-example\/images\/qml-xmlhttprequest-example.png/..\/..\/media\/qml-xmlhttprequest-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/anchorchanges.png https://developer.ubuntu.com/static/devportal_uploaded/903bb5b0-ff69-425d-80cb-408c2871b379-api/apps/qml/sdk-15.04.6/QtQuick.AnchorChanges/images/anchorchanges.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/903bb5b0-ff69-425d-80cb-408c2871b379-api\/apps\/qml\/sdk-15.04.6\/QtQuick.AnchorChanges\/images\/anchorchanges.png/..\/..\/media\/anchorchanges.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/animatedimageitem.gif https://developer.ubuntu.com/static/devportal_uploaded/ac4e5417-3c23-4932-bcc0-6002d5f65351-api/apps/qml/sdk-15.04.6/QtQuick.AnimatedImage/images/animatedimageitem.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ac4e5417-3c23-4932-bcc0-6002d5f65351-api\/apps\/qml\/sdk-15.04.6\/QtQuick.AnimatedImage\/images\/animatedimageitem.gif/..\/..\/media\/animatedimageitem.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-linear.png https://developer.ubuntu.com/static/devportal_uploaded/9132f7af-1261-4535-8557-10b36dfe9062-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-linear.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9132f7af-1261-4535-8557-10b36dfe9062-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-linear.png/..\/..\/media\/qeasingcurve-linear.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquad.png https://developer.ubuntu.com/static/devportal_uploaded/51879490-e82c-4611-8f8e-2752e932a8b3-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/51879490-e82c-4611-8f8e-2752e932a8b3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inquad.png/..\/..\/media\/qeasingcurve-inquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquad.png https://developer.ubuntu.com/static/devportal_uploaded/da9fd0b6-9fa6-4ba0-893d-754723329464-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/da9fd0b6-9fa6-4ba0-893d-754723329464-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outquad.png/..\/..\/media\/qeasingcurve-outquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquad.png https://developer.ubuntu.com/static/devportal_uploaded/e8f9419c-a921-407b-97a6-1673a9a339a5-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e8f9419c-a921-407b-97a6-1673a9a339a5-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutquad.png/..\/..\/media\/qeasingcurve-inoutquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquad.png https://developer.ubuntu.com/static/devportal_uploaded/a070ab9f-f58f-4e91-9216-f1c783dd5c6a-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a070ab9f-f58f-4e91-9216-f1c783dd5c6a-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outinquad.png/..\/..\/media\/qeasingcurve-outinquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-incubic.png https://developer.ubuntu.com/static/devportal_uploaded/dbc0522b-09c0-486f-ab3d-892aa9d6a879-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-incubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dbc0522b-09c0-486f-ab3d-892aa9d6a879-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-incubic.png/..\/..\/media\/qeasingcurve-incubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outcubic.png https://developer.ubuntu.com/static/devportal_uploaded/cdd61dbc-d42e-4b53-bf0e-9646130684a0-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cdd61dbc-d42e-4b53-bf0e-9646130684a0-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outcubic.png/..\/..\/media\/qeasingcurve-outcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutcubic.png https://developer.ubuntu.com/static/devportal_uploaded/948404e1-f419-426a-a248-d90b1424305d-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/948404e1-f419-426a-a248-d90b1424305d-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutcubic.png/..\/..\/media\/qeasingcurve-inoutcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outincubic.png https://developer.ubuntu.com/static/devportal_uploaded/7de2811b-1c90-44dd-966c-1be5fc5e3ac3-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outincubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7de2811b-1c90-44dd-966c-1be5fc5e3ac3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outincubic.png/..\/..\/media\/qeasingcurve-outincubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquart.png https://developer.ubuntu.com/static/devportal_uploaded/da8c3c13-76c8-4ba8-ad7b-5c4192b26852-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/da8c3c13-76c8-4ba8-ad7b-5c4192b26852-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inquart.png/..\/..\/media\/qeasingcurve-inquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquart.png https://developer.ubuntu.com/static/devportal_uploaded/48fb3cbe-70d0-4766-a552-399111de8140-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/48fb3cbe-70d0-4766-a552-399111de8140-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outquart.png/..\/..\/media\/qeasingcurve-outquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquart.png https://developer.ubuntu.com/static/devportal_uploaded/eb778a0d-7371-44dc-8636-b4dac027bf35-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/eb778a0d-7371-44dc-8636-b4dac027bf35-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutquart.png/..\/..\/media\/qeasingcurve-inoutquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquart.png https://developer.ubuntu.com/static/devportal_uploaded/1767e5ca-8dab-4500-9139-1e1f6ab1c75f-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1767e5ca-8dab-4500-9139-1e1f6ab1c75f-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outinquart.png/..\/..\/media\/qeasingcurve-outinquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquint.png https://developer.ubuntu.com/static/devportal_uploaded/f90a5cb4-9263-4eb2-8ac9-6ec898be97e9-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f90a5cb4-9263-4eb2-8ac9-6ec898be97e9-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inquint.png/..\/..\/media\/qeasingcurve-inquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquint.png https://developer.ubuntu.com/static/devportal_uploaded/72397c23-ed74-4ca7-add9-d96625337f6a-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/72397c23-ed74-4ca7-add9-d96625337f6a-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outquint.png/..\/..\/media\/qeasingcurve-outquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquint.png https://developer.ubuntu.com/static/devportal_uploaded/47d7f637-f6db-4fc5-aed1-cd4539c06499-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/47d7f637-f6db-4fc5-aed1-cd4539c06499-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutquint.png/..\/..\/media\/qeasingcurve-inoutquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquint.png https://developer.ubuntu.com/static/devportal_uploaded/965230f5-6fd4-470d-a29b-f5aea99ebbc4-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/965230f5-6fd4-470d-a29b-f5aea99ebbc4-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outinquint.png/..\/..\/media\/qeasingcurve-outinquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-insine.png https://developer.ubuntu.com/static/devportal_uploaded/95b4c209-7ad2-441c-8f54-e7fb7221993d-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-insine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/95b4c209-7ad2-441c-8f54-e7fb7221993d-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-insine.png/..\/..\/media\/qeasingcurve-insine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outsine.png https://developer.ubuntu.com/static/devportal_uploaded/de3cde67-2a38-4ce3-9809-fa5aae3fd5dc-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/de3cde67-2a38-4ce3-9809-fa5aae3fd5dc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outsine.png/..\/..\/media\/qeasingcurve-outsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutsine.png https://developer.ubuntu.com/static/devportal_uploaded/be7fc43c-07e2-4825-8153-949bfb34e8c1-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/be7fc43c-07e2-4825-8153-949bfb34e8c1-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutsine.png/..\/..\/media\/qeasingcurve-inoutsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinsine.png https://developer.ubuntu.com/static/devportal_uploaded/2eecfeae-96fd-457b-b848-d46e24f9f206-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2eecfeae-96fd-457b-b848-d46e24f9f206-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outinsine.png/..\/..\/media\/qeasingcurve-outinsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inexpo.png https://developer.ubuntu.com/static/devportal_uploaded/ca168072-2411-467f-b63f-19f8aa2df2f0-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ca168072-2411-467f-b63f-19f8aa2df2f0-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inexpo.png/..\/..\/media\/qeasingcurve-inexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outexpo.png https://developer.ubuntu.com/static/devportal_uploaded/f5307796-6d0a-49a2-a300-67df9439e542-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f5307796-6d0a-49a2-a300-67df9439e542-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outexpo.png/..\/..\/media\/qeasingcurve-outexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutexpo.png https://developer.ubuntu.com/static/devportal_uploaded/21f8fe4d-2a15-4e8f-8768-90355930c7bc-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/21f8fe4d-2a15-4e8f-8768-90355930c7bc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutexpo.png/..\/..\/media\/qeasingcurve-inoutexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinexpo.png https://developer.ubuntu.com/static/devportal_uploaded/607b6c7e-cac8-4177-8417-6454da2489ac-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/607b6c7e-cac8-4177-8417-6454da2489ac-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outinexpo.png/..\/..\/media\/qeasingcurve-outinexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-incirc.png https://developer.ubuntu.com/static/devportal_uploaded/1f51c163-ab5a-4d06-be19-6437a8e275f8-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-incirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1f51c163-ab5a-4d06-be19-6437a8e275f8-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-incirc.png/..\/..\/media\/qeasingcurve-incirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outcirc.png https://developer.ubuntu.com/static/devportal_uploaded/720397ec-3b67-4fc5-bd9c-6b808182f1e1-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outcirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/720397ec-3b67-4fc5-bd9c-6b808182f1e1-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outcirc.png/..\/..\/media\/qeasingcurve-outcirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutcirc.png https://developer.ubuntu.com/static/devportal_uploaded/58968d25-1cbd-4625-a81e-93bf99767e87-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutcirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/58968d25-1cbd-4625-a81e-93bf99767e87-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutcirc.png/..\/..\/media\/qeasingcurve-inoutcirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outincirc.png https://developer.ubuntu.com/static/devportal_uploaded/b4a39533-0a5a-4dc6-aa1c-75160ab64ec6-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outincirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b4a39533-0a5a-4dc6-aa1c-75160ab64ec6-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outincirc.png/..\/..\/media\/qeasingcurve-outincirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inelastic.png https://developer.ubuntu.com/static/devportal_uploaded/c9692743-6040-4f4d-9943-477cc916aff1-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c9692743-6040-4f4d-9943-477cc916aff1-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inelastic.png/..\/..\/media\/qeasingcurve-inelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outelastic.png https://developer.ubuntu.com/static/devportal_uploaded/0ccb049e-f98f-4ce4-8420-79ba1d7d883f-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0ccb049e-f98f-4ce4-8420-79ba1d7d883f-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outelastic.png/..\/..\/media\/qeasingcurve-outelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutelastic.png https://developer.ubuntu.com/static/devportal_uploaded/bb415128-f8af-416b-b1d7-9834a030aa32-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bb415128-f8af-416b-b1d7-9834a030aa32-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutelastic.png/..\/..\/media\/qeasingcurve-inoutelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinelastic.png https://developer.ubuntu.com/static/devportal_uploaded/d50b0c74-1bd4-4143-ae01-80829135d3ac-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d50b0c74-1bd4-4143-ae01-80829135d3ac-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outinelastic.png/..\/..\/media\/qeasingcurve-outinelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inback.png https://developer.ubuntu.com/static/devportal_uploaded/061014cb-b1d6-4f61-9aab-61d9ddde753e-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/061014cb-b1d6-4f61-9aab-61d9ddde753e-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inback.png/..\/..\/media\/qeasingcurve-inback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outback.png https://developer.ubuntu.com/static/devportal_uploaded/cb27f528-c4d2-412a-9786-40fd834e669d-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cb27f528-c4d2-412a-9786-40fd834e669d-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outback.png/..\/..\/media\/qeasingcurve-outback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutback.png https://developer.ubuntu.com/static/devportal_uploaded/b7cfade8-facd-4be3-819c-40714fcacd25-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b7cfade8-facd-4be3-819c-40714fcacd25-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutback.png/..\/..\/media\/qeasingcurve-inoutback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinback.png https://developer.ubuntu.com/static/devportal_uploaded/712d77a8-7f5d-40a3-b5f6-27b58f7d784e-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/712d77a8-7f5d-40a3-b5f6-27b58f7d784e-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outinback.png/..\/..\/media\/qeasingcurve-outinback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inbounce.png https://developer.ubuntu.com/static/devportal_uploaded/c1ed58c4-0304-4492-a33d-e3cb0bf6ff5c-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c1ed58c4-0304-4492-a33d-e3cb0bf6ff5c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inbounce.png/..\/..\/media\/qeasingcurve-inbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outbounce.png https://developer.ubuntu.com/static/devportal_uploaded/34e5d4ce-ed73-4d63-9a29-eae1b9aab2b5-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/34e5d4ce-ed73-4d63-9a29-eae1b9aab2b5-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outbounce.png/..\/..\/media\/qeasingcurve-outbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutbounce.png https://developer.ubuntu.com/static/devportal_uploaded/8bf2f152-5204-41e0-908c-cf5c2e199bba-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-inoutbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8bf2f152-5204-41e0-908c-cf5c2e199bba-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-inoutbounce.png/..\/..\/media\/qeasingcurve-inoutbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinbounce.png https://developer.ubuntu.com/static/devportal_uploaded/6b79bf7f-4030-411c-b271-7a46969f3ba5-api/apps/qml/sdk-15.04.6/QtQuick.Animator/images/qeasingcurve-outinbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6b79bf7f-4030-411c-b271-7a46969f3ba5-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Animator\/images\/qeasingcurve-outinbounce.png/..\/..\/media\/qeasingcurve-outinbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-scalegrid.png https://developer.ubuntu.com/static/devportal_uploaded/ba004901-5bae-4cf1-a9b9-b7846d6cfe8e-api/apps/qml/sdk-15.04.6/QtQuick.BorderImage/images/declarative-scalegrid.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ba004901-5bae-4cf1-a9b9-b7846d6cfe8e-api\/apps\/qml\/sdk-15.04.6\/QtQuick.BorderImage\/images\/declarative-scalegrid.png/..\/..\/media\/declarative-scalegrid.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-borderimage-normal-image.png https://developer.ubuntu.com/api/apps/qml/sdk-15.04.6/QtQuick.BorderImage/images/qml-borderimage-normal-image.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/api\/apps\/qml\/sdk-15.04.6\/QtQuick.BorderImage\/images\/qml-borderimage-normal-image.png/..\/..\/media\/qml-borderimage-normal-image.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-borderimage-scaled.png https://developer.ubuntu.com/static/devportal_uploaded/8245c4e8-31ee-4d4d-b5b7-6cf51175af44-api/apps/qml/sdk-15.04.6/QtQuick.BorderImage/images/qml-borderimage-scaled.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8245c4e8-31ee-4d4d-b5b7-6cf51175af44-api\/apps\/qml\/sdk-15.04.6\/QtQuick.BorderImage\/images\/qml-borderimage-scaled.png/..\/..\/media\/qml-borderimage-scaled.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-borderimage-tiled.png https://developer.ubuntu.com/static/devportal_uploaded/a4a4f9fc-288a-4d37-8d37-cfee2905511e-api/apps/qml/sdk-15.04.6/QtQuick.BorderImage/images/qml-borderimage-tiled.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a4a4f9fc-288a-4d37-8d37-cfee2905511e-api\/apps\/qml\/sdk-15.04.6\/QtQuick.BorderImage\/images\/qml-borderimage-tiled.png/..\/..\/media\/qml-borderimage-tiled.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-scalegrid.png https://developer.ubuntu.com/static/devportal_uploaded/544b4692-9c22-4bad-999a-147ad61d9575-api/apps/qml/sdk-15.04.6/QtQuick.BorderImage/images/declarative-scalegrid.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/544b4692-9c22-4bad-999a-147ad61d9575-api\/apps\/qml\/sdk-15.04.6\/QtQuick.BorderImage\/images\/declarative-scalegrid.png/..\/..\/media\/declarative-scalegrid.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/verticalpositioner_example.png https://developer.ubuntu.com/static/devportal_uploaded/e228eaf7-e8f1-4d0c-bfc8-943d82802457-api/apps/qml/sdk-15.04.6/QtQuick.Column/images/verticalpositioner_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e228eaf7-e8f1-4d0c-bfc8-943d82802457-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Column\/images\/verticalpositioner_example.png/..\/..\/media\/verticalpositioner_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/verticalpositioner_transition.gif https://developer.ubuntu.com/static/devportal_uploaded/2efaf5dd-4205-4cc5-b2bb-253d4dd7e9c3-api/apps/qml/sdk-15.04.6/QtQuick.Column/images/verticalpositioner_transition.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2efaf5dd-4205-4cc5-b2bb-253d4dd7e9c3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Column\/images\/verticalpositioner_transition.gif/..\/..\/media\/verticalpositioner_transition.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-context.gif https://developer.ubuntu.com/static/devportal_uploaded/6efb18d5-44b3-4efa-98b3-ee73e770aa59-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-context.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6efb18d5-44b3-4efa-98b3-ee73e770aa59-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-context.gif/..\/..\/media\/qml-item-canvas-context.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-startAngle.png https://developer.ubuntu.com/static/devportal_uploaded/f79f7795-3171-4896-b404-0a2cd1bb5391-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-startAngle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f79f7795-3171-4896-b404-0a2cd1bb5391-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-startAngle.png/..\/..\/media\/qml-item-canvas-startAngle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-arcTo.png https://developer.ubuntu.com/static/devportal_uploaded/a01abd24-99a1-4213-a6d0-2058e44d4dca-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-arcTo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a01abd24-99a1-4213-a6d0-2058e44d4dca-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-arcTo.png/..\/..\/media\/qml-item-canvas-arcTo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-bezierCurveTo.png https://developer.ubuntu.com/static/devportal_uploaded/ea8adca7-d21e-4783-ba50-663e95514c60-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-bezierCurveTo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ea8adca7-d21e-4783-ba50-663e95514c60-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-bezierCurveTo.png/..\/..\/media\/qml-item-canvas-bezierCurveTo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-clip-complex.png https://developer.ubuntu.com/static/devportal_uploaded/3e52baa6-04aa-48ea-94dd-86fc16e98e42-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-clip-complex.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3e52baa6-04aa-48ea-94dd-86fc16e98e42-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-clip-complex.png/..\/..\/media\/qml-item-canvas-clip-complex.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-rotate.png https://developer.ubuntu.com/static/devportal_uploaded/a3b540fe-ecd9-42d5-bfbe-ca86ec057de5-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-rotate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a3b540fe-ecd9-42d5-bfbe-ca86ec057de5-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-rotate.png/..\/..\/media\/qml-item-canvas-rotate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-math-rotate.png https://developer.ubuntu.com/static/devportal_uploaded/414e0372-092d-454e-815d-b40fc3b74d5f-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-math-rotate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/414e0372-092d-454e-815d-b40fc3b74d5f-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-math-rotate.png/..\/..\/media\/qml-item-canvas-math-rotate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-scale.png https://developer.ubuntu.com/static/devportal_uploaded/95378f68-e4c4-4eca-bbfa-5aff16ac9f08-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-scale.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/95378f68-e4c4-4eca-bbfa-5aff16ac9f08-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-scale.png/..\/..\/media\/qml-item-canvas-scale.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-math.png https://developer.ubuntu.com/static/devportal_uploaded/221aebe2-25d2-4cf0-bd4b-c2abd4d1d69b-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-math.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/221aebe2-25d2-4cf0-bd4b-c2abd4d1d69b-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-math.png/..\/..\/media\/qml-item-canvas-math.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-scalex.png https://developer.ubuntu.com/static/devportal_uploaded/4ef4f937-e2ed-4743-8cd1-dfffdb5a8a4c-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-scalex.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4ef4f937-e2ed-4743-8cd1-dfffdb5a8a4c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-scalex.png/..\/..\/media\/qml-item-canvas-scalex.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-skewx.png https://developer.ubuntu.com/static/devportal_uploaded/76c1f570-f303-43d7-a1b9-8594abd2d1ec-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-skewx.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/76c1f570-f303-43d7-a1b9-8594abd2d1ec-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-skewx.png/..\/..\/media\/qml-item-canvas-skewx.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-translate.png https://developer.ubuntu.com/static/devportal_uploaded/1527d9e1-b0ef-43c0-8a9c-1bd3a1a3d030-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-translate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1527d9e1-b0ef-43c0-8a9c-1bd3a1a3d030-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-translate.png/..\/..\/media\/qml-item-canvas-translate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-skewy.png https://developer.ubuntu.com/static/devportal_uploaded/ae4ff57d-4a49-444b-a887-795bfc5fb284-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-skewy.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ae4ff57d-4a49-444b-a887-795bfc5fb284-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-skewy.png/..\/..\/media\/qml-item-canvas-skewy.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-scaley.png https://developer.ubuntu.com/static/devportal_uploaded/fe1f9a22-186a-4a31-a130-ee31327fd7f7-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-scaley.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fe1f9a22-186a-4a31-a130-ee31327fd7f7-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-scaley.png/..\/..\/media\/qml-item-canvas-scaley.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-item-canvas-translatey.png https://developer.ubuntu.com/static/devportal_uploaded/0d20688a-f035-4e34-8c98-c2305ba5765f-api/apps/qml/sdk-15.04.6/QtQuick.Context2D/images/qml-item-canvas-translatey.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0d20688a-f035-4e34-8c98-c2305ba5765f-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Context2D\/images\/qml-item-canvas-translatey.png/..\/..\/media\/qml-item-canvas-translatey.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/flipable.gif https://developer.ubuntu.com/static/devportal_uploaded/929f4808-5199-44a4-b039-a2aa7ccd9cdc-api/apps/qml/sdk-15.04.6/QtQuick.Flipable/images/flipable.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/929f4808-5199-44a4-b039-a2aa7ccd9cdc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Flipable\/images\/flipable.gif/..\/..\/media\/flipable.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/flickable.gif https://developer.ubuntu.com/static/devportal_uploaded/0fd53132-3cc7-4a05-9dbc-23a94cb8cc88-api/apps/qml/sdk-15.04.6/QtQuick.Flickable/images/flickable.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0fd53132-3cc7-4a05-9dbc-23a94cb8cc88-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Flickable\/images\/flickable.gif/..\/..\/media\/flickable.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/flickable-rebound.gif https://developer.ubuntu.com/static/devportal_uploaded/2c40134a-32de-4cc9-8bee-4b6a0f4d479c-api/apps/qml/sdk-15.04.6/QtQuick.Flickable/images/flickable-rebound.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2c40134a-32de-4cc9-8bee-4b6a0f4d479c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Flickable\/images\/flickable-rebound.gif/..\/..\/media\/flickable-rebound.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-flow-snippet.png https://developer.ubuntu.com/static/devportal_uploaded/63024109-72a2-4232-8d40-b24b8d82b1d3-api/apps/qml/sdk-15.04.6/QtQuick.Flow/images/qml-flow-snippet.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/63024109-72a2-4232-8d40-b24b8d82b1d3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Flow\/images\/qml-flow-snippet.png/..\/..\/media\/qml-flow-snippet.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-gradient.png https://developer.ubuntu.com/static/devportal_uploaded/90557112-73b4-4042-bdcc-6ed1dfb726f0-api/apps/qml/sdk-15.04.6/QtQuick.Gradient/images/qml-gradient.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/90557112-73b4-4042-bdcc-6ed1dfb726f0-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Gradient\/images\/qml-gradient.png/..\/..\/media\/qml-gradient.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridLayout_example.png https://developer.ubuntu.com/static/devportal_uploaded/cc0afc25-1b8e-4d62-a76e-b515d4094cdc-api/apps/qml/sdk-15.04.6/QtQuick.Grid/images/gridLayout_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cc0afc25-1b8e-4d62-a76e-b515d4094cdc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Grid\/images\/gridLayout_example.png/..\/..\/media\/gridLayout_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridLayout_aligncenter.png https://developer.ubuntu.com/static/devportal_uploaded/03e9d6af-817f-481b-9b99-d562c8b35cee-api/apps/qml/sdk-15.04.6/QtQuick.Grid/images/gridLayout_aligncenter.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/03e9d6af-817f-481b-9b99-d562c8b35cee-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Grid\/images\/gridLayout_aligncenter.png/..\/..\/media\/gridLayout_aligncenter.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridLayout_aligncenter.png https://developer.ubuntu.com/static/devportal_uploaded/71ced4ef-5703-456c-afeb-ce806f3e49f7-api/apps/qml/sdk-15.04.6/QtQuick.Grid/images/gridLayout_aligncenter.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/71ced4ef-5703-456c-afeb-ce806f3e49f7-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Grid\/images\/gridLayout_aligncenter.png/..\/..\/media\/gridLayout_aligncenter.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-grid-spacing.png https://developer.ubuntu.com/static/devportal_uploaded/cf2c1754-0132-4e4c-b572-060fb15c1186-api/apps/qml/sdk-15.04.6/QtQuick.Grid/images/qml-grid-spacing.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cf2c1754-0132-4e4c-b572-060fb15c1186-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Grid\/images\/qml-grid-spacing.png/..\/..\/media\/qml-grid-spacing.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridLayout_aligncenter.png https://developer.ubuntu.com/static/devportal_uploaded/ce4d879d-8869-425c-acec-a4311eaa269d-api/apps/qml/sdk-15.04.6/QtQuick.Grid/images/gridLayout_aligncenter.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ce4d879d-8869-425c-acec-a4311eaa269d-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Grid\/images\/gridLayout_aligncenter.png/..\/..\/media\/gridLayout_aligncenter.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-gridmesh.png https://developer.ubuntu.com/static/devportal_uploaded/a04577c6-58bf-4da6-9893-e7b8988c4929-api/apps/qml/sdk-15.04.6/QtQuick.GridMesh/images/declarative-gridmesh.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a04577c6-58bf-4da6-9893-e7b8988c4929-api\/apps\/qml\/sdk-15.04.6\/QtQuick.GridMesh\/images\/declarative-gridmesh.png/..\/..\/media\/declarative-gridmesh.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridview-simple.png https://developer.ubuntu.com/static/devportal_uploaded/25f5f4fa-9c4f-42b6-a4e6-18be967c841c-api/apps/qml/sdk-15.04.6/QtQuick.GridView/images/gridview-simple.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/25f5f4fa-9c4f-42b6-a4e6-18be967c841c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.GridView\/images\/gridview-simple.png/..\/..\/media\/gridview-simple.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridview-highlight.png https://developer.ubuntu.com/static/devportal_uploaded/49e33755-0625-4fcd-a6de-220d22cf696c-api/apps/qml/sdk-15.04.6/QtQuick.GridView/images/gridview-highlight.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/49e33755-0625-4fcd-a6de-220d22cf696c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.GridView\/images\/gridview-highlight.png/..\/..\/media\/gridview-highlight.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridview-layout-lefttoright-rtl-btt.png https://developer.ubuntu.com/static/devportal_uploaded/794b6a13-c41e-46be-a9de-aed3aedb7e77-api/apps/qml/sdk-15.04.6/QtQuick.GridView/images/gridview-layout-lefttoright-rtl-btt.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/794b6a13-c41e-46be-a9de-aed3aedb7e77-api\/apps\/qml\/sdk-15.04.6\/QtQuick.GridView\/images\/gridview-layout-lefttoright-rtl-btt.png/..\/..\/media\/gridview-layout-lefttoright-rtl-btt.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/gridview-layout-toptobottom-rtl-btt.png https://developer.ubuntu.com/static/devportal_uploaded/599cb52a-bf0e-4a37-a412-9cdc9084eb12-api/apps/qml/sdk-15.04.6/QtQuick.GridView/images/gridview-layout-toptobottom-rtl-btt.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/599cb52a-bf0e-4a37-a412-9cdc9084eb12-api\/apps\/qml\/sdk-15.04.6\/QtQuick.GridView\/images\/gridview-layout-toptobottom-rtl-btt.png/..\/..\/media\/gridview-layout-toptobottom-rtl-btt.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo.png https://developer.ubuntu.com/static/devportal_uploaded/ddc37ee6-42ba-4223-9527-01efb0b445f8-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ddc37ee6-42ba-4223-9527-01efb0b445f8-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Image\/images\/declarative-qtlogo.png/..\/..\/media\/declarative-qtlogo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-stretch.png https://developer.ubuntu.com/static/devportal_uploaded/9d2e085d-c78c-46bb-bac2-e8f809664730-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-stretch.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9d2e085d-c78c-46bb-bac2-e8f809664730-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Image\/images\/declarative-qtlogo-stretch.png/..\/..\/media\/declarative-qtlogo-stretch.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-preserveaspectfit.png https://developer.ubuntu.com/static/devportal_uploaded/d4f940aa-74c6-4c81-80b3-cfbc3f224233-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-preserveaspectfit.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d4f940aa-74c6-4c81-80b3-cfbc3f224233-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Image\/images\/declarative-qtlogo-preserveaspectfit.png/..\/..\/media\/declarative-qtlogo-preserveaspectfit.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-preserveaspectcrop.png https://developer.ubuntu.com/static/devportal_uploaded/bb4f65f9-ba2b-41e3-970b-e428ebdc3a6c-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-preserveaspectcrop.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bb4f65f9-ba2b-41e3-970b-e428ebdc3a6c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Image\/images\/declarative-qtlogo-preserveaspectcrop.png/..\/..\/media\/declarative-qtlogo-preserveaspectcrop.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-tile.png https://developer.ubuntu.com/static/devportal_uploaded/ff77fdee-e8ec-42f9-b44f-11c341713acc-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-tile.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ff77fdee-e8ec-42f9-b44f-11c341713acc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Image\/images\/declarative-qtlogo-tile.png/..\/..\/media\/declarative-qtlogo-tile.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-tilevertically.png https://developer.ubuntu.com/static/devportal_uploaded/f461f5b5-e73c-4583-83dd-480c9b7a9d0b-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-tilevertically.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f461f5b5-e73c-4583-83dd-480c9b7a9d0b-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Image\/images\/declarative-qtlogo-tilevertically.png/..\/..\/media\/declarative-qtlogo-tilevertically.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qtlogo-tilehorizontally.png https://developer.ubuntu.com/static/devportal_uploaded/20e56eb3-3431-4455-8e13-e567a9c0618c-api/apps/qml/sdk-15.04.6/QtQuick.Image/images/declarative-qtlogo-tilehorizontally.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/20e56eb3-3431-4455-8e13-e567a9c0618c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Image\/images\/declarative-qtlogo-tilehorizontally.png/..\/..\/media\/declarative-qtlogo-tilehorizontally.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-blending-nonlayered.png https://developer.ubuntu.com/static/devportal_uploaded/8f667498-d5a1-4475-b34c-7d000bbed055-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/qml-blending-nonlayered.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8f667498-d5a1-4475-b34c-7d000bbed055-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/qml-blending-nonlayered.png/..\/..\/media\/qml-blending-nonlayered.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-blending-layered.png https://developer.ubuntu.com/static/devportal_uploaded/9218e764-169f-4d8c-b817-e5555604c68c-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/qml-blending-layered.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9218e764-169f-4d8c-b817-e5555604c68c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/qml-blending-layered.png/..\/..\/media\/qml-blending-layered.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-anchors_example.png https://developer.ubuntu.com/static/devportal_uploaded/b9c9509a-2b9f-4c82-b1df-69e959e8c189-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-anchors_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b9c9509a-2b9f-4c82-b1df-69e959e8c189-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-anchors_example.png/..\/..\/media\/declarative-anchors_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-anchors_example2.png https://developer.ubuntu.com/static/devportal_uploaded/27296a1c-6057-463c-a227-c2693b847c33-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-anchors_example2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/27296a1c-6057-463c-a227-c2693b847c33-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-anchors_example2.png/..\/..\/media\/declarative-anchors_example2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_opacity1.png https://developer.ubuntu.com/static/devportal_uploaded/e95c9d76-f3e7-4d1c-ab76-f1468f72e29d-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-item_opacity1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e95c9d76-f3e7-4d1c-ab76-f1468f72e29d-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-item_opacity1.png/..\/..\/media\/declarative-item_opacity1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_opacity2.png https://developer.ubuntu.com/static/devportal_uploaded/15c31303-9a2c-4f4a-80e7-7b5b5287bbc9-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-item_opacity2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/15c31303-9a2c-4f4a-80e7-7b5b5287bbc9-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-item_opacity2.png/..\/..\/media\/declarative-item_opacity2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-rotation.png https://developer.ubuntu.com/static/devportal_uploaded/84fb6fbf-f75c-4b9b-a228-3f498b5873ab-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-rotation.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/84fb6fbf-f75c-4b9b-a228-3f498b5873ab-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-rotation.png/..\/..\/media\/declarative-rotation.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-scale.png https://developer.ubuntu.com/static/devportal_uploaded/0e39cc5e-7196-4824-a0f0-00f467f369da-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-scale.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0e39cc5e-7196-4824-a0f0-00f467f369da-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-scale.png/..\/..\/media\/declarative-scale.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-transformorigin.png https://developer.ubuntu.com/static/devportal_uploaded/cfce0446-edeb-41b0-aed0-82dfe964ff0d-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-transformorigin.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cfce0446-edeb-41b0-aed0-82dfe964ff0d-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-transformorigin.png/..\/..\/media\/declarative-transformorigin.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_stacking1.png https://developer.ubuntu.com/static/devportal_uploaded/64a54dc0-9b3f-4eea-a67b-cd241b010ba7-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-item_stacking1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/64a54dc0-9b3f-4eea-a67b-cd241b010ba7-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-item_stacking1.png/..\/..\/media\/declarative-item_stacking1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_stacking2.png https://developer.ubuntu.com/static/devportal_uploaded/364c0746-926c-478c-9fee-43c1e4db0db6-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-item_stacking2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/364c0746-926c-478c-9fee-43c1e4db0db6-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-item_stacking2.png/..\/..\/media\/declarative-item_stacking2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_stacking3.png https://developer.ubuntu.com/static/devportal_uploaded/399ebfca-1f5b-4e8a-8493-08786647ba43-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-item_stacking3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/399ebfca-1f5b-4e8a-8493-08786647ba43-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-item_stacking3.png/..\/..\/media\/declarative-item_stacking3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-item_stacking4.png https://developer.ubuntu.com/static/devportal_uploaded/210abf73-ada8-4db4-8b6a-7bd2ed3db34b-api/apps/qml/sdk-15.04.6/QtQuick.Item/images/declarative-item_stacking4.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/210abf73-ada8-4db4-8b6a-7bd2ed3db34b-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Item\/images\/declarative-item_stacking4.png/..\/..\/media\/declarative-item_stacking4.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layoutmirroring.png https://developer.ubuntu.com/static/devportal_uploaded/78cfad02-1ec3-4309-9aaa-803202d0bf5c-api/apps/qml/sdk-15.04.6/QtQuick.LayoutMirroring/images/layoutmirroring.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/78cfad02-1ec3-4309-9aaa-803202d0bf5c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.LayoutMirroring\/images\/layoutmirroring.png/..\/..\/media\/layoutmirroring.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-simple.png https://developer.ubuntu.com/static/devportal_uploaded/623f347a-c3b6-43cd-8d2a-2727e4ad9367-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-simple.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/623f347a-c3b6-43cd-8d2a-2727e4ad9367-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ListView\/images\/listview-simple.png/..\/..\/media\/listview-simple.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-highlight.png https://developer.ubuntu.com/static/devportal_uploaded/9c47d771-e103-46ab-a9f3-856f60ac9913-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-highlight.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9c47d771-e103-46ab-a9f3-856f60ac9913-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ListView\/images\/listview-highlight.png/..\/..\/media\/listview-highlight.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-layout-bottomtotop.png https://developer.ubuntu.com/static/devportal_uploaded/955ba826-a623-47ae-a968-60ff5061ab86-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-layout-bottomtotop.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/955ba826-a623-47ae-a968-60ff5061ab86-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ListView\/images\/listview-layout-bottomtotop.png/..\/..\/media\/listview-layout-bottomtotop.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-layout-righttoleft.png https://developer.ubuntu.com/static/devportal_uploaded/a9939c1d-e6aa-4d05-a631-eb91dca96080-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-layout-righttoleft.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a9939c1d-e6aa-4d05-a631-eb91dca96080-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ListView\/images\/listview-layout-righttoleft.png/..\/..\/media\/listview-layout-righttoleft.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/ListViewHorizontal.png https://developer.ubuntu.com/static/devportal_uploaded/92b0d421-739a-4190-9c90-7b7f5ee18df9-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/ListViewHorizontal.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/92b0d421-739a-4190-9c90-7b7f5ee18df9-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ListView\/images\/ListViewHorizontal.png/..\/..\/media\/ListViewHorizontal.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-highlight.png https://developer.ubuntu.com/static/devportal_uploaded/7d9f1bcb-7b2e-42c9-9db6-0a07627451bb-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/listview-highlight.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7d9f1bcb-7b2e-42c9-9db6-0a07627451bb-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ListView\/images\/listview-highlight.png/..\/..\/media\/listview-highlight.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-listview-sections-example.png https://developer.ubuntu.com/static/devportal_uploaded/e431f34e-e84b-4da3-a0cd-c8e09407cf56-api/apps/qml/sdk-15.04.6/QtQuick.ListView/images/qml-listview-sections-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e431f34e-e84b-4da3-a0cd-c8e09407cf56-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ListView\/images\/qml-listview-sections-example.png/..\/..\/media\/qml-listview-sections-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-mousearea-snippet.png https://developer.ubuntu.com/static/devportal_uploaded/6202bcd1-e22e-4412-a859-d131ad61016c-api/apps/qml/sdk-15.04.6/QtQuick.MouseArea/images/qml-mousearea-snippet.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6202bcd1-e22e-4412-a859-d131ad61016c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.MouseArea\/images\/qml-mousearea-snippet.png/..\/..\/media\/qml-mousearea-snippet.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/parentchange.png https://developer.ubuntu.com/static/devportal_uploaded/30e47a58-17e7-48fa-9954-567805bcd604-api/apps/qml/sdk-15.04.6/QtQuick.ParentChange/images/parentchange.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/30e47a58-17e7-48fa-9954-567805bcd604-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ParentChange\/images\/parentchange.png/..\/..\/media\/parentchange.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/star.png https://developer.ubuntu.com/static/devportal_uploaded/c8d70d40-2c2c-4cc1-ae8b-68220feba246-api/apps/qml/sdk-15.04.6/QtQuick.Particles.ImageParticle/images/star.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c8d70d40-2c2c-4cc1-ae8b-68220feba246-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Particles.ImageParticle\/images\/star.png/..\/..\/media\/star.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/glowdot.png https://developer.ubuntu.com/static/devportal_uploaded/88eaffc3-f0a9-4494-9c07-12dfb8603dc1-api/apps/qml/sdk-15.04.6/QtQuick.Particles.ImageParticle/images/glowdot.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/88eaffc3-f0a9-4494-9c07-12dfb8603dc1-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Particles.ImageParticle\/images\/glowdot.png/..\/..\/media\/glowdot.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/fuzzydot.png https://developer.ubuntu.com/static/devportal_uploaded/b7913c4b-c026-4445-821b-f98d43605947-api/apps/qml/sdk-15.04.6/QtQuick.Particles.ImageParticle/images/fuzzydot.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b7913c4b-c026-4445-821b-f98d43605947-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Particles.ImageParticle\/images\/fuzzydot.png/..\/..\/media\/fuzzydot.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-patharc.png https://developer.ubuntu.com/static/devportal_uploaded/01e17111-d30e-4f2b-b530-7703a33941e9-api/apps/qml/sdk-15.04.6/QtQuick.PathArc/images/declarative-patharc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/01e17111-d30e-4f2b-b530-7703a33941e9-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathArc\/images\/declarative-patharc.png/..\/..\/media\/declarative-patharc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-arcdirection.png https://developer.ubuntu.com/static/devportal_uploaded/e9a816eb-08c7-4dda-8d7c-10d64f04e8bb-api/apps/qml/sdk-15.04.6/QtQuick.PathArc/images/declarative-arcdirection.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e9a816eb-08c7-4dda-8d7c-10d64f04e8bb-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathArc\/images\/declarative-arcdirection.png/..\/..\/media\/declarative-arcdirection.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-arcradius.png https://developer.ubuntu.com/static/devportal_uploaded/4f8b4903-39f6-448e-9bfa-8b518d6f2614-api/apps/qml/sdk-15.04.6/QtQuick.PathArc/images/declarative-arcradius.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4f8b4903-39f6-448e-9bfa-8b518d6f2614-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathArc\/images\/declarative-arcradius.png/..\/..\/media\/declarative-arcradius.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-arcradius.png https://developer.ubuntu.com/static/devportal_uploaded/20055d97-d83f-4e31-959e-31da4ea82cdb-api/apps/qml/sdk-15.04.6/QtQuick.PathArc/images/declarative-arcradius.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/20055d97-d83f-4e31-959e-31da4ea82cdb-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathArc\/images\/declarative-arcradius.png/..\/..\/media\/declarative-arcradius.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-largearc.png https://developer.ubuntu.com/static/devportal_uploaded/0bb71f7a-cb0c-423f-b71a-a4bf4f4157d1-api/apps/qml/sdk-15.04.6/QtQuick.PathArc/images/declarative-largearc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0bb71f7a-cb0c-423f-b71a-a4bf4f4157d1-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathArc\/images\/declarative-largearc.png/..\/..\/media\/declarative-largearc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathattribute.png https://developer.ubuntu.com/static/devportal_uploaded/75faf298-2b1b-4f90-a8a2-58cc852ed3d9-api/apps/qml/sdk-15.04.6/QtQuick.PathAttribute/images/declarative-pathattribute.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/75faf298-2b1b-4f90-a8a2-58cc852ed3d9-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathAttribute\/images\/declarative-pathattribute.png/..\/..\/media\/declarative-pathattribute.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathcubic.png https://developer.ubuntu.com/static/devportal_uploaded/e64a36cf-d135-4c4c-878d-7d28cc53bf90-api/apps/qml/sdk-15.04.6/QtQuick.PathCubic/images/declarative-pathcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e64a36cf-d135-4c4c-878d-7d28cc53bf90-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathCubic\/images\/declarative-pathcubic.png/..\/..\/media\/declarative-pathcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathcurve.png https://developer.ubuntu.com/static/devportal_uploaded/fd3a5c32-eb73-4f9f-b062-29664dfc31de-api/apps/qml/sdk-15.04.6/QtQuick.PathCurve/images/declarative-pathcurve.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fd3a5c32-eb73-4f9f-b062-29664dfc31de-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathCurve\/images\/declarative-pathcurve.png/..\/..\/media\/declarative-pathcurve.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-nopercent.png https://developer.ubuntu.com/static/devportal_uploaded/b26871d7-6dd2-41a9-9e3d-65b7b5b2e319-api/apps/qml/sdk-15.04.6/QtQuick.PathPercent/images/declarative-nopercent.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b26871d7-6dd2-41a9-9e3d-65b7b5b2e319-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathPercent\/images\/declarative-nopercent.png/..\/..\/media\/declarative-nopercent.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-percent.png https://developer.ubuntu.com/static/devportal_uploaded/e12b0ab7-a344-498b-84a9-bbf6b4e0a91e-api/apps/qml/sdk-15.04.6/QtQuick.PathPercent/images/declarative-percent.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e12b0ab7-a344-498b-84a9-bbf6b4e0a91e-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathPercent\/images\/declarative-percent.png/..\/..\/media\/declarative-percent.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathquad.png https://developer.ubuntu.com/static/devportal_uploaded/8d9d0827-df9a-4bd4-88df-c5ae5cdc7e97-api/apps/qml/sdk-15.04.6/QtQuick.PathQuad/images/declarative-pathquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8d9d0827-df9a-4bd4-88df-c5ae5cdc7e97-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathQuad\/images\/declarative-pathquad.png/..\/..\/media\/declarative-pathquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-pathsvg.png https://developer.ubuntu.com/static/devportal_uploaded/42d2ab49-167e-4d4f-bb0a-b4413d64fab8-api/apps/qml/sdk-15.04.6/QtQuick.PathSvg/images/declarative-pathsvg.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/42d2ab49-167e-4d4f-bb0a-b4413d64fab8-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathSvg\/images\/declarative-pathsvg.png/..\/..\/media\/declarative-pathsvg.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/pathview.gif https://developer.ubuntu.com/static/devportal_uploaded/941f04c3-37f2-480f-bd37-a88141a661a3-api/apps/qml/sdk-15.04.6/QtQuick.PathView/images/pathview.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/941f04c3-37f2-480f-bd37-a88141a661a3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PathView\/images\/pathview.gif/..\/..\/media\/pathview.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/positioner-example.png https://developer.ubuntu.com/static/devportal_uploaded/49ee7133-1e17-4c49-b231-a95660f7d7fa-api/apps/qml/sdk-15.04.6/QtQuick.Positioner/images/positioner-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/49ee7133-1e17-4c49-b231-a95660f7d7fa-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Positioner\/images\/positioner-example.png/..\/..\/media\/positioner-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-linear.png https://developer.ubuntu.com/static/devportal_uploaded/1cfe3062-3954-4b62-8e36-b4819691ff04-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-linear.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1cfe3062-3954-4b62-8e36-b4819691ff04-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-linear.png/..\/..\/media\/qeasingcurve-linear.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquad.png https://developer.ubuntu.com/static/devportal_uploaded/94c2821e-6829-422a-ae42-796822b9b257-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/94c2821e-6829-422a-ae42-796822b9b257-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inquad.png/..\/..\/media\/qeasingcurve-inquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquad.png https://developer.ubuntu.com/static/devportal_uploaded/f9182675-9671-4bb8-bb6f-769aa1d62165-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f9182675-9671-4bb8-bb6f-769aa1d62165-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outquad.png/..\/..\/media\/qeasingcurve-outquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquad.png https://developer.ubuntu.com/static/devportal_uploaded/135a30a4-46d7-4ce2-a3df-43c912fe625d-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/135a30a4-46d7-4ce2-a3df-43c912fe625d-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutquad.png/..\/..\/media\/qeasingcurve-inoutquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquad.png https://developer.ubuntu.com/static/devportal_uploaded/99abe053-4ba1-4b83-bab5-1240900acff2-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinquad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/99abe053-4ba1-4b83-bab5-1240900acff2-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinquad.png/..\/..\/media\/qeasingcurve-outinquad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-incubic.png https://developer.ubuntu.com/static/devportal_uploaded/21a1f1de-e176-4a1f-8b7a-15b7cbea4d97-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-incubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/21a1f1de-e176-4a1f-8b7a-15b7cbea4d97-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-incubic.png/..\/..\/media\/qeasingcurve-incubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outcubic.png https://developer.ubuntu.com/static/devportal_uploaded/bdc8b965-0e63-4846-ae70-2e940e778cf7-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bdc8b965-0e63-4846-ae70-2e940e778cf7-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outcubic.png/..\/..\/media\/qeasingcurve-outcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutcubic.png https://developer.ubuntu.com/static/devportal_uploaded/a158bb0e-0176-4f52-b34d-c2fa1f71e704-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a158bb0e-0176-4f52-b34d-c2fa1f71e704-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutcubic.png/..\/..\/media\/qeasingcurve-inoutcubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outincubic.png https://developer.ubuntu.com/static/devportal_uploaded/8ed2d9f4-0bb7-43c8-a8cd-7b3f10019346-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outincubic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8ed2d9f4-0bb7-43c8-a8cd-7b3f10019346-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outincubic.png/..\/..\/media\/qeasingcurve-outincubic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquart.png https://developer.ubuntu.com/static/devportal_uploaded/50b48df8-11b9-4c89-903f-e8eb7ce169b3-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/50b48df8-11b9-4c89-903f-e8eb7ce169b3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inquart.png/..\/..\/media\/qeasingcurve-inquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquart.png https://developer.ubuntu.com/static/devportal_uploaded/60f6f8eb-55e9-4cfb-8c6e-f6336fdc6ed0-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/60f6f8eb-55e9-4cfb-8c6e-f6336fdc6ed0-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outquart.png/..\/..\/media\/qeasingcurve-outquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquart.png https://developer.ubuntu.com/static/devportal_uploaded/66ea6126-4b48-4b3c-a7e3-00ed289a415e-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/66ea6126-4b48-4b3c-a7e3-00ed289a415e-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutquart.png/..\/..\/media\/qeasingcurve-inoutquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquart.png https://developer.ubuntu.com/static/devportal_uploaded/53dd5860-0d9f-4e6d-8c11-b532c8fb52f3-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinquart.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/53dd5860-0d9f-4e6d-8c11-b532c8fb52f3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinquart.png/..\/..\/media\/qeasingcurve-outinquart.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inquint.png https://developer.ubuntu.com/static/devportal_uploaded/a7d31fc9-889c-4e1d-8147-14bddedac6a0-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a7d31fc9-889c-4e1d-8147-14bddedac6a0-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inquint.png/..\/..\/media\/qeasingcurve-inquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outquint.png https://developer.ubuntu.com/static/devportal_uploaded/91f95000-7ce8-4463-8b43-2d37cafda1b0-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/91f95000-7ce8-4463-8b43-2d37cafda1b0-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outquint.png/..\/..\/media\/qeasingcurve-outquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutquint.png https://developer.ubuntu.com/static/devportal_uploaded/489166f5-292e-4715-8677-caef21bd2949-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/489166f5-292e-4715-8677-caef21bd2949-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutquint.png/..\/..\/media\/qeasingcurve-inoutquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinquint.png https://developer.ubuntu.com/static/devportal_uploaded/2bd603ee-d924-4678-a939-048acd79a993-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinquint.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2bd603ee-d924-4678-a939-048acd79a993-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinquint.png/..\/..\/media\/qeasingcurve-outinquint.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-insine.png https://developer.ubuntu.com/static/devportal_uploaded/b0986a63-2955-42fa-89dc-7d29aad2f5ba-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-insine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b0986a63-2955-42fa-89dc-7d29aad2f5ba-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-insine.png/..\/..\/media\/qeasingcurve-insine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outsine.png https://developer.ubuntu.com/static/devportal_uploaded/8f030709-c892-4ae5-ae12-2b0d9eb60a30-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8f030709-c892-4ae5-ae12-2b0d9eb60a30-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outsine.png/..\/..\/media\/qeasingcurve-outsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutsine.png https://developer.ubuntu.com/static/devportal_uploaded/d6cace88-b6c9-45dc-8902-78d7cf41d961-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d6cace88-b6c9-45dc-8902-78d7cf41d961-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutsine.png/..\/..\/media\/qeasingcurve-inoutsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinsine.png https://developer.ubuntu.com/static/devportal_uploaded/04cecc21-5c9c-4508-910d-218eae2fb972-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinsine.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/04cecc21-5c9c-4508-910d-218eae2fb972-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinsine.png/..\/..\/media\/qeasingcurve-outinsine.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inexpo.png https://developer.ubuntu.com/static/devportal_uploaded/ce855b39-a272-4cce-86a7-7ea5b30258fc-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ce855b39-a272-4cce-86a7-7ea5b30258fc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inexpo.png/..\/..\/media\/qeasingcurve-inexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outexpo.png https://developer.ubuntu.com/static/devportal_uploaded/edba4dac-d713-4f13-9666-9aa0057e3d8f-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/edba4dac-d713-4f13-9666-9aa0057e3d8f-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outexpo.png/..\/..\/media\/qeasingcurve-outexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutexpo.png https://developer.ubuntu.com/static/devportal_uploaded/e93227cd-d913-449e-8b56-796fdbe19d46-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e93227cd-d913-449e-8b56-796fdbe19d46-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutexpo.png/..\/..\/media\/qeasingcurve-inoutexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinexpo.png https://developer.ubuntu.com/static/devportal_uploaded/875f8bb6-be12-4741-bc68-6f772ac8227d-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinexpo.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/875f8bb6-be12-4741-bc68-6f772ac8227d-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinexpo.png/..\/..\/media\/qeasingcurve-outinexpo.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-incirc.png https://developer.ubuntu.com/static/devportal_uploaded/3fab9298-9a41-434f-a80e-949fd6b81b89-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-incirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3fab9298-9a41-434f-a80e-949fd6b81b89-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-incirc.png/..\/..\/media\/qeasingcurve-incirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outcirc.png https://developer.ubuntu.com/static/devportal_uploaded/0ae656ee-bdaa-4609-9d15-39358741280a-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outcirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0ae656ee-bdaa-4609-9d15-39358741280a-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outcirc.png/..\/..\/media\/qeasingcurve-outcirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutcirc.png https://developer.ubuntu.com/static/devportal_uploaded/7135e63b-7407-486f-ab30-784a0498b1cf-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutcirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7135e63b-7407-486f-ab30-784a0498b1cf-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutcirc.png/..\/..\/media\/qeasingcurve-inoutcirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outincirc.png https://developer.ubuntu.com/static/devportal_uploaded/78394a18-a27e-47a4-9223-6e5514094035-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outincirc.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/78394a18-a27e-47a4-9223-6e5514094035-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outincirc.png/..\/..\/media\/qeasingcurve-outincirc.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inelastic.png https://developer.ubuntu.com/static/devportal_uploaded/9f984c80-413c-4ead-bde5-7e8556e2ecf4-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9f984c80-413c-4ead-bde5-7e8556e2ecf4-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inelastic.png/..\/..\/media\/qeasingcurve-inelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outelastic.png https://developer.ubuntu.com/static/devportal_uploaded/a0662e49-9dd9-4627-84ef-a29ca69413d1-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a0662e49-9dd9-4627-84ef-a29ca69413d1-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outelastic.png/..\/..\/media\/qeasingcurve-outelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutelastic.png https://developer.ubuntu.com/static/devportal_uploaded/de6d66fa-6902-47cd-ad8f-bcc843f02b56-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/de6d66fa-6902-47cd-ad8f-bcc843f02b56-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutelastic.png/..\/..\/media\/qeasingcurve-inoutelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinelastic.png https://developer.ubuntu.com/static/devportal_uploaded/0986235a-3e9b-49ea-b957-69608fc353bc-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinelastic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0986235a-3e9b-49ea-b957-69608fc353bc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinelastic.png/..\/..\/media\/qeasingcurve-outinelastic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inback.png https://developer.ubuntu.com/static/devportal_uploaded/aef17b42-8dce-4f99-a32b-7355a3f11c07-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/aef17b42-8dce-4f99-a32b-7355a3f11c07-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inback.png/..\/..\/media\/qeasingcurve-inback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outback.png https://developer.ubuntu.com/static/devportal_uploaded/36b67c6b-faba-4ab9-9c4c-4f14221a4d1a-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/36b67c6b-faba-4ab9-9c4c-4f14221a4d1a-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outback.png/..\/..\/media\/qeasingcurve-outback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutback.png https://developer.ubuntu.com/static/devportal_uploaded/2ff33765-a519-40a9-9afe-48e09c7d4fa6-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2ff33765-a519-40a9-9afe-48e09c7d4fa6-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutback.png/..\/..\/media\/qeasingcurve-inoutback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinback.png https://developer.ubuntu.com/static/devportal_uploaded/438dd2ce-080d-4949-8c24-b3c10c28683c-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinback.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/438dd2ce-080d-4949-8c24-b3c10c28683c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinback.png/..\/..\/media\/qeasingcurve-outinback.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inbounce.png https://developer.ubuntu.com/static/devportal_uploaded/27a1d51d-cc4d-496c-b1d1-d5c731c4a701-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/27a1d51d-cc4d-496c-b1d1-d5c731c4a701-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inbounce.png/..\/..\/media\/qeasingcurve-inbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outbounce.png https://developer.ubuntu.com/static/devportal_uploaded/7227c5ed-2ed9-4e9f-932f-53c218aed9d8-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7227c5ed-2ed9-4e9f-932f-53c218aed9d8-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outbounce.png/..\/..\/media\/qeasingcurve-outbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-inoutbounce.png https://developer.ubuntu.com/static/devportal_uploaded/3fc962bf-5740-4883-8e44-286f62e7b9fc-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-inoutbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3fc962bf-5740-4883-8e44-286f62e7b9fc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-inoutbounce.png/..\/..\/media\/qeasingcurve-inoutbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qeasingcurve-outinbounce.png https://developer.ubuntu.com/static/devportal_uploaded/e7641bd8-6ff7-4d12-895a-0cba8548ac06-api/apps/qml/sdk-15.04.6/QtQuick.PropertyAnimation/images/qeasingcurve-outinbounce.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e7641bd8-6ff7-4d12-895a-0cba8548ac06-api\/apps\/qml\/sdk-15.04.6\/QtQuick.PropertyAnimation\/images\/qeasingcurve-outinbounce.png/..\/..\/media\/qeasingcurve-outinbounce.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-samegame.png https://developer.ubuntu.com/static/devportal_uploaded/8159ac7d-46cc-417a-9a1e-42e0572a21cb-api/apps/qml/sdk-15.04.6/qml-advtutorial/images/declarative-samegame.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8159ac7d-46cc-417a-9a1e-42e0572a21cb-api\/apps\/qml\/sdk-15.04.6\/qml-advtutorial\/images\/declarative-samegame.png/..\/..\/media\/declarative-samegame.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-tutorial1.png https://developer.ubuntu.com/static/devportal_uploaded/70eacf48-0928-4b4a-8d90-faa88c54e43f-api/apps/qml/sdk-15.04.6/qml-tutorial1/images/declarative-tutorial1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/70eacf48-0928-4b4a-8d90-faa88c54e43f-api\/apps\/qml\/sdk-15.04.6\/qml-tutorial1\/images\/declarative-tutorial1.png/..\/..\/media\/declarative-tutorial1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-tutorial2.png https://developer.ubuntu.com/static/devportal_uploaded/7bb14414-8094-4557-a998-8ecbbb50f1c9-api/apps/qml/sdk-15.04.6/qml-tutorial2/images/declarative-tutorial2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7bb14414-8094-4557-a998-8ecbbb50f1c9-api\/apps\/qml\/sdk-15.04.6\/qml-tutorial2\/images\/declarative-tutorial2.png/..\/..\/media\/declarative-tutorial2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-tutorial3_animation.gif https://developer.ubuntu.com/static/devportal_uploaded/04752034-388b-4ecb-9351-e6f32bf43677-api/apps/qml/sdk-15.04.6/qml-tutorial3/images/declarative-tutorial3_animation.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/04752034-388b-4ecb-9351-e6f32bf43677-api\/apps\/qml\/sdk-15.04.6\/qml-tutorial3\/images\/declarative-tutorial3_animation.gif/..\/..\/media\/declarative-tutorial3_animation.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-animations-example.png https://developer.ubuntu.com/static/devportal_uploaded/f4a4722c-c347-444a-88e4-c1ebba5bfa39-api/apps/qml/sdk-15.04.6/qtquick-animation-example/images/qml-animations-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f4a4722c-c347-444a-88e4-c1ebba5bfa39-api\/apps\/qml\/sdk-15.04.6\/qtquick-animation-example\/images\/qml-animations-example.png/..\/..\/media\/qml-animations-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-canvas-example.png https://developer.ubuntu.com/static/devportal_uploaded/2145276a-f665-4f5e-b397-8dc510cc4d2c-api/apps/qml/sdk-15.04.6/qtquick-canvas-example/images/qml-canvas-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2145276a-f665-4f5e-b397-8dc510cc4d2c-api\/apps\/qml\/sdk-15.04.6\/qtquick-canvas-example\/images\/qml-canvas-example.png/..\/..\/media\/qml-canvas-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-flipable-example.png https://developer.ubuntu.com/static/devportal_uploaded/85abf82f-1dde-4fea-a45b-d0315333bb25-api/apps/qml/sdk-15.04.6/qtquick-customitems-flipable-example/images/qml-flipable-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/85abf82f-1dde-4fea-a45b-d0315333bb25-api\/apps\/qml\/sdk-15.04.6\/qtquick-customitems-flipable-example\/images\/qml-flipable-example.png/..\/..\/media\/qml-flipable-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-dialcontrol-example.png https://developer.ubuntu.com/static/devportal_uploaded/a36d1cef-f63d-460f-bb0f-cef842d20a59-api/apps/qml/sdk-15.04.6/qtquick-customitems-dialcontrol-example/images/qml-dialcontrol-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a36d1cef-f63d-460f-bb0f-cef842d20a59-api\/apps\/qml\/sdk-15.04.6\/qtquick-customitems-dialcontrol-example\/images\/qml-dialcontrol-example.png/..\/..\/media\/qml-dialcontrol-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textballoons_example.png https://developer.ubuntu.com/static/devportal_uploaded/81d1e548-ff46-4912-868d-f72a979239ce-api/apps/qml/sdk-15.04.6/qtquick-customitems-painteditem-example/images/declarative-textballoons_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/81d1e548-ff46-4912-868d-f72a979239ce-api\/apps\/qml\/sdk-15.04.6\/qtquick-customitems-painteditem-example\/images\/declarative-textballoons_example.png/..\/..\/media\/declarative-textballoons_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-scrollbar-example.png https://developer.ubuntu.com/static/devportal_uploaded/1c8c815b-617a-4682-82fd-529fe9ddc8e9-api/apps/qml/sdk-15.04.6/qtquick-customitems-scrollbar-example/images/qml-scrollbar-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1c8c815b-617a-4682-82fd-529fe9ddc8e9-api\/apps\/qml\/sdk-15.04.6\/qtquick-customitems-scrollbar-example\/images\/qml-scrollbar-example.png/..\/..\/media\/qml-scrollbar-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-tabwidget-example.png https://developer.ubuntu.com/static/devportal_uploaded/1d1005f3-7bde-40e9-b598-0f937a80a1cf-api/apps/qml/sdk-15.04.6/qtquick-customitems-tabwidget-example/images/qml-tabwidget-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1d1005f3-7bde-40e9-b598-0f937a80a1cf-api\/apps\/qml\/sdk-15.04.6\/qtquick-customitems-tabwidget-example\/images\/qml-tabwidget-example.png/..\/..\/media\/qml-tabwidget-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-calqlatr.png https://developer.ubuntu.com/static/devportal_uploaded/c8fa7628-10e8-444e-b720-289897321592-api/apps/qml/sdk-15.04.6/qtquick-demos-calqlatr-example/images/qtquick-demo-calqlatr.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c8fa7628-10e8-444e-b720-289897321592-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-calqlatr-example\/images\/qtquick-demo-calqlatr.png/..\/..\/media\/qtquick-demo-calqlatr.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-2.png https://developer.ubuntu.com/static/devportal_uploaded/8943333f-a8ae-47d1-977a-388e9a8bbaca-api/apps/qml/sdk-15.04.6/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8943333f-a8ae-47d1-977a-388e9a8bbaca-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-2.png/..\/..\/media\/qtquick-demo-maroon-med-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-1.png https://developer.ubuntu.com/static/devportal_uploaded/1b0db3ef-8292-4162-8251-780e4eb0c0a7-api/apps/qml/sdk-15.04.6/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1b0db3ef-8292-4162-8251-780e4eb0c0a7-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-1.png/..\/..\/media\/qtquick-demo-maroon-med-1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-2.png https://developer.ubuntu.com/static/devportal_uploaded/ef450e97-f87b-49ee-b133-12c36b654100-api/apps/qml/sdk-15.04.6/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ef450e97-f87b-49ee-b133-12c36b654100-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-2.png/..\/..\/media\/qtquick-demo-maroon-med-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-3.jpg https://developer.ubuntu.com/static/devportal_uploaded/8056f14f-9278-4d53-8233-662737e1c2d5-api/apps/qml/sdk-15.04.6/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-3.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8056f14f-9278-4d53-8233-662737e1c2d5-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-3.jpg/..\/..\/media\/qtquick-demo-maroon-med-3.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-4.jpg https://developer.ubuntu.com/static/devportal_uploaded/4fc71e0f-d618-4642-b0ae-bdb5d0871d13-api/apps/qml/sdk-15.04.6/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-4.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4fc71e0f-d618-4642-b0ae-bdb5d0871d13-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-4.jpg/..\/..\/media\/qtquick-demo-maroon-med-4.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-6.jpg https://developer.ubuntu.com/static/devportal_uploaded/0ef6d0f5-d18e-40dd-96c9-f254e2e66cc7-api/apps/qml/sdk-15.04.6/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-6.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0ef6d0f5-d18e-40dd-96c9-f254e2e66cc7-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-6.jpg/..\/..\/media\/qtquick-demo-maroon-med-6.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/mob-idle.png https://developer.ubuntu.com/static/devportal_uploaded/962b6f2b-5ba2-4d83-aef9-1861361ca13f-api/apps/qml/sdk-15.04.6/qtquick-demos-maroon-example/images/mob-idle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/962b6f2b-5ba2-4d83-aef9-1861361ca13f-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-maroon-example\/images\/mob-idle.png/..\/..\/media\/mob-idle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-maroon-med-5.jpg https://developer.ubuntu.com/static/devportal_uploaded/6b7c01fd-9c88-4323-af6a-36ca863fd034-api/apps/qml/sdk-15.04.6/qtquick-demos-maroon-example/images/qtquick-demo-maroon-med-5.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6b7c01fd-9c88-4323-af6a-36ca863fd034-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-maroon-example\/images\/qtquick-demo-maroon-med-5.jpg/..\/..\/media\/qtquick-demo-maroon-med-5.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-photosurface-small.png https://developer.ubuntu.com/static/devportal_uploaded/9c8de1cd-7f99-402c-ba63-10bc13110aa4-api/apps/qml/sdk-15.04.6/qtquick-demos-photosurface-example/images/qtquick-demo-photosurface-small.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9c8de1cd-7f99-402c-ba63-10bc13110aa4-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-photosurface-example\/images\/qtquick-demo-photosurface-small.png/..\/..\/media\/qtquick-demo-photosurface-small.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-clocks-small.png https://developer.ubuntu.com/static/devportal_uploaded/67253fdf-97aa-4300-8443-1cd5749dd883-api/apps/qml/sdk-15.04.6/qtquick-demos-clocks-example/images/qtquick-demo-clocks-small.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/67253fdf-97aa-4300-8443-1cd5749dd883-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-clocks-example\/images\/qtquick-demo-clocks-small.png/..\/..\/media\/qtquick-demo-clocks-small.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-rssnews-small.png https://developer.ubuntu.com/static/devportal_uploaded/351ca38c-ca83-421e-856b-7b2452266d61-api/apps/qml/sdk-15.04.6/qtquick-demos-rssnews-example/images/qtquick-demo-rssnews-small.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/351ca38c-ca83-421e-856b-7b2452266d61-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-rssnews-example\/images\/qtquick-demo-rssnews-small.png/..\/..\/media\/qtquick-demo-rssnews-small.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-photoviewer-small.png https://developer.ubuntu.com/static/devportal_uploaded/f3f250c5-fa02-4a38-9597-6f888f6ab1be-api/apps/qml/sdk-15.04.6/qtquick-demos-photoviewer-example/images/qtquick-demo-photoviewer-small.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f3f250c5-fa02-4a38-9597-6f888f6ab1be-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-photoviewer-example\/images\/qtquick-demo-photoviewer-small.png/..\/..\/media\/qtquick-demo-photoviewer-small.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-stocqt.png https://developer.ubuntu.com/static/devportal_uploaded/6ca5008e-3534-4654-8f4f-05ce96ae9abf-api/apps/qml/sdk-15.04.6/qtquick-demos-stocqt-example/images/qtquick-demo-stocqt.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6ca5008e-3534-4654-8f4f-05ce96ae9abf-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-stocqt-example\/images\/qtquick-demo-stocqt.png/..\/..\/media\/qtquick-demo-stocqt.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-tweetsearch-med-2.png https://developer.ubuntu.com/static/devportal_uploaded/13ab3086-ca81-4516-93b7-d43d2143f320-api/apps/qml/sdk-15.04.6/qtquick-demos-tweetsearch-example/images/qtquick-demo-tweetsearch-med-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/13ab3086-ca81-4516-93b7-d43d2143f320-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-tweetsearch-example\/images\/qtquick-demo-tweetsearch-med-2.png/..\/..\/media\/qtquick-demo-tweetsearch-med-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-draganddrop-example.png https://developer.ubuntu.com/static/devportal_uploaded/04926f89-c69c-4395-810d-9d9dcc364ea9-api/apps/qml/sdk-15.04.6/qtquick-draganddrop-example/images/qml-draganddrop-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/04926f89-c69c-4395-810d-9d9dcc364ea9-api\/apps\/qml\/sdk-15.04.6\/qtquick-draganddrop-example\/images\/qml-draganddrop-example.png/..\/..\/media\/qml-draganddrop-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquick-demo-samegame-med-2.png https://developer.ubuntu.com/static/devportal_uploaded/ac626288-94d2-4c70-b5b9-218c377a1d8e-api/apps/qml/sdk-15.04.6/qtquick-demos-samegame-example/images/qtquick-demo-samegame-med-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ac626288-94d2-4c70-b5b9-218c377a1d8e-api\/apps\/qml\/sdk-15.04.6\/qtquick-demos-samegame-example\/images\/qtquick-demo-samegame-med-2.png/..\/..\/media\/qtquick-demo-samegame-med-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/spriteenginegraph.png https://developer.ubuntu.com/static/devportal_uploaded/e76a36ed-df5a-46fd-b9f6-d75afb6654e1-api/apps/qml/sdk-15.04.6/qtquick-effects-sprites/images/spriteenginegraph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e76a36ed-df5a-46fd-b9f6-d75afb6654e1-api\/apps\/qml\/sdk-15.04.6\/qtquick-effects-sprites\/images\/spriteenginegraph.png/..\/..\/media\/spriteenginegraph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/spritecutting.png https://developer.ubuntu.com/static/devportal_uploaded/24fdd4e6-fbbf-4a52-bb6e-3a7c83b1e440-api/apps/qml/sdk-15.04.6/qtquick-effects-sprites/images/spritecutting.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/24fdd4e6-fbbf-4a52-bb6e-3a7c83b1e440-api\/apps\/qml\/sdk-15.04.6\/qtquick-effects-sprites\/images\/spritecutting.png/..\/..\/media\/spritecutting.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-dnd2-example.png https://developer.ubuntu.com/static/devportal_uploaded/506743df-1713-480f-8734-3a1789d5f5f7-api/apps/qml/sdk-15.04.6/qtquick-externaldraganddrop-example/images/qml-dnd2-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/506743df-1713-480f-8734-3a1789d5f5f7-api\/apps\/qml\/sdk-15.04.6\/qtquick-externaldraganddrop-example\/images\/qml-dnd2-example.png/..\/..\/media\/qml-dnd2-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-imageelements-example.png https://developer.ubuntu.com/static/devportal_uploaded/44f5ab98-a89b-4e31-a1a8-60fd36298c7b-api/apps/qml/sdk-15.04.6/qtquick-imageelements-example/images/qml-imageelements-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/44f5ab98-a89b-4e31-a1a8-60fd36298c7b-api\/apps\/qml\/sdk-15.04.6\/qtquick-imageelements-example\/images\/qml-imageelements-example.png/..\/..\/media\/qml-imageelements-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-imageprovider-example.png https://developer.ubuntu.com/static/devportal_uploaded/3891f03a-1add-4b22-b277-57690adafe44-api/apps/qml/sdk-15.04.6/qtquick-imageprovider-example/images/qml-imageprovider-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3891f03a-1add-4b22-b277-57690adafe44-api\/apps\/qml\/sdk-15.04.6\/qtquick-imageprovider-example\/images\/qml-imageprovider-example.png/..\/..\/media\/qml-imageprovider-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus1.png https://developer.ubuntu.com/static/devportal_uploaded/923d4eaf-7ccf-424f-abc6-ed0ad269ef25-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/923d4eaf-7ccf-424f-abc6-ed0ad269ef25-api\/apps\/qml\/sdk-15.04.6\/qtquick-input-focus\/images\/declarative-qmlfocus1.png/..\/..\/media\/declarative-qmlfocus1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus2.png https://developer.ubuntu.com/static/devportal_uploaded/0dff8e1d-cdd4-493f-a29f-4538c809d53f-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0dff8e1d-cdd4-493f-a29f-4538c809d53f-api\/apps\/qml\/sdk-15.04.6\/qtquick-input-focus\/images\/declarative-qmlfocus2.png/..\/..\/media\/declarative-qmlfocus2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus3.png https://developer.ubuntu.com/static/devportal_uploaded/c5310cf9-49e9-4d09-9104-1181dfefeb6c-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c5310cf9-49e9-4d09-9104-1181dfefeb6c-api\/apps\/qml\/sdk-15.04.6\/qtquick-input-focus\/images\/declarative-qmlfocus3.png/..\/..\/media\/declarative-qmlfocus3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus4.png https://developer.ubuntu.com/static/devportal_uploaded/c8318dd9-84f8-4ccf-b727-144ca8b19b74-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus4.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c8318dd9-84f8-4ccf-b727-144ca8b19b74-api\/apps\/qml\/sdk-15.04.6\/qtquick-input-focus\/images\/declarative-qmlfocus4.png/..\/..\/media\/declarative-qmlfocus4.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-qmlfocus5.png https://developer.ubuntu.com/static/devportal_uploaded/bb6249d4-f5e3-4a68-95d4-0156eb33ca80-api/apps/qml/sdk-15.04.6/qtquick-input-focus/images/declarative-qmlfocus5.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bb6249d4-f5e3-4a68-95d4-0156eb33ca80-api\/apps\/qml\/sdk-15.04.6\/qtquick-input-focus\/images\/declarative-qmlfocus5.png/..\/..\/media\/declarative-qmlfocus5.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-keyinteraction-example.png https://developer.ubuntu.com/static/devportal_uploaded/63f4e972-e1b5-490d-8449-a87d52bbd587-api/apps/qml/sdk-15.04.6/qtquick-keyinteraction-example/images/qml-keyinteraction-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/63f4e972-e1b5-490d-8449-a87d52bbd587-api\/apps\/qml\/sdk-15.04.6\/qtquick-keyinteraction-example\/images\/qml-keyinteraction-example.png/..\/..\/media\/qml-keyinteraction-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-localstorage-example.png https://developer.ubuntu.com/static/devportal_uploaded/95a213d2-8962-47a7-a42d-2075f9443865-api/apps/qml/sdk-15.04.6/qtquick-localstorage-example/images/qml-localstorage-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/95a213d2-8962-47a7-a42d-2075f9443865-api\/apps\/qml\/sdk-15.04.6\/qtquick-localstorage-example\/images\/qml-localstorage-example.png/..\/..\/media\/qml-localstorage-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-abstractitemmodel-example.png https://developer.ubuntu.com/static/devportal_uploaded/6542ffed-c796-4964-9063-adad6080f3d0-api/apps/qml/sdk-15.04.6/qtquick-models-abstractitemmodel-example/images/qml-abstractitemmodel-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6542ffed-c796-4964-9063-adad6080f3d0-api\/apps\/qml\/sdk-15.04.6\/qtquick-models-abstractitemmodel-example\/images\/qml-abstractitemmodel-example.png/..\/..\/media\/qml-abstractitemmodel-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-objectlistmodel-example.png https://developer.ubuntu.com/static/devportal_uploaded/e3784078-beb7-4f69-99e2-fe33fc2e27f3-api/apps/qml/sdk-15.04.6/qtquick-models-objectlistmodel-example/images/qml-objectlistmodel-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e3784078-beb7-4f69-99e2-fe33fc2e27f3-api\/apps\/qml\/sdk-15.04.6\/qtquick-models-objectlistmodel-example\/images\/qml-objectlistmodel-example.png/..\/..\/media\/qml-objectlistmodel-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-stringlistmodel-example.png https://developer.ubuntu.com/static/devportal_uploaded/83408865-0590-4bfa-a188-cad3606260c4-api/apps/qml/sdk-15.04.6/qtquick-models-stringlistmodel-example/images/qml-stringlistmodel-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/83408865-0590-4bfa-a188-cad3606260c4-api\/apps\/qml\/sdk-15.04.6\/qtquick-models-stringlistmodel-example\/images\/qml-stringlistmodel-example.png/..\/..\/media\/qml-stringlistmodel-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/modelview-overview.png https://developer.ubuntu.com/static/devportal_uploaded/f4bfb94c-3a3f-4c4c-999d-68bc32ae7e4b-api/apps/qml/sdk-15.04.6/qtquick-modelviewsdata-modelview/images/modelview-overview.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f4bfb94c-3a3f-4c4c-999d-68bc32ae7e4b-api\/apps\/qml\/sdk-15.04.6\/qtquick-modelviewsdata-modelview\/images\/modelview-overview.png/..\/..\/media\/modelview-overview.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-decorations.png https://developer.ubuntu.com/static/devportal_uploaded/66d9ad6f-ec45-48d5-9bb3-ed37f6ecef38-api/apps/qml/sdk-15.04.6/qtquick-modelviewsdata-modelview/images/listview-decorations.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/66d9ad6f-ec45-48d5-9bb3-ed37f6ecef38-api\/apps\/qml\/sdk-15.04.6\/qtquick-modelviewsdata-modelview\/images\/listview-decorations.png/..\/..\/media\/listview-decorations.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-section.png https://developer.ubuntu.com/static/devportal_uploaded/bac01bf7-cd49-4142-abd7-bd6fe83842b1-api/apps/qml/sdk-15.04.6/qtquick-modelviewsdata-modelview/images/listview-section.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bac01bf7-cd49-4142-abd7-bd6fe83842b1-api\/apps\/qml\/sdk-15.04.6\/qtquick-modelviewsdata-modelview\/images\/listview-section.png/..\/..\/media\/listview-section.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/listview-setup.png https://developer.ubuntu.com/static/devportal_uploaded/b7953ffe-e362-4d48-872b-715b512f2313-api/apps/qml/sdk-15.04.6/qtquick-modelviewsdata-modelview/images/listview-setup.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b7953ffe-e362-4d48-872b-715b512f2313-api\/apps\/qml\/sdk-15.04.6\/qtquick-modelviewsdata-modelview\/images\/listview-setup.png/..\/..\/media\/listview-setup.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater-index.png https://developer.ubuntu.com/static/devportal_uploaded/41fa8717-fa13-4158-ab9f-99f38f8a9987-api/apps/qml/sdk-15.04.6/qtquick-modelviewsdata-modelview/images/repeater-index.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/41fa8717-fa13-4158-ab9f-99f38f8a9987-api\/apps\/qml\/sdk-15.04.6\/qtquick-modelviewsdata-modelview\/images\/repeater-index.png/..\/..\/media\/repeater-index.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-mousearea-example.png https://developer.ubuntu.com/static/devportal_uploaded/b9773e9e-37db-490f-8346-38ba170344b7-api/apps/qml/sdk-15.04.6/qtquick-mousearea-example/images/qml-mousearea-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b9773e9e-37db-490f-8346-38ba170344b7-api\/apps\/qml\/sdk-15.04.6\/qtquick-mousearea-example\/images\/qml-mousearea-example.png/..\/..\/media\/qml-mousearea-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-customparticle-example.png https://developer.ubuntu.com/static/devportal_uploaded/5b785eb1-f807-41e3-a424-e2217a547a63-api/apps/qml/sdk-15.04.6/qtquick-particles-customparticle-example/images/qml-customparticle-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5b785eb1-f807-41e3-a424-e2217a547a63-api\/apps\/qml\/sdk-15.04.6\/qtquick-particles-customparticle-example\/images\/qml-customparticle-example.png/..\/..\/media\/qml-customparticle-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-affectors-example.png https://developer.ubuntu.com/static/devportal_uploaded/51f76e1d-e516-4985-ae66-c7ba0ade977c-api/apps/qml/sdk-15.04.6/qtquick-particles-affectors-example/images/qml-affectors-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/51f76e1d-e516-4985-ae66-c7ba0ade977c-api\/apps\/qml\/sdk-15.04.6\/qtquick-particles-affectors-example\/images\/qml-affectors-example.png/..\/..\/media\/qml-affectors-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-emitters-example.png https://developer.ubuntu.com/static/devportal_uploaded/88ec1975-59c2-4c3a-810c-a38d298a7aaa-api/apps/qml/sdk-15.04.6/qtquick-particles-emitters-example/images/qml-emitters-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/88ec1975-59c2-4c3a-810c-a38d298a7aaa-api\/apps\/qml\/sdk-15.04.6\/qtquick-particles-emitters-example\/images\/qml-emitters-example.png/..\/..\/media\/qml-emitters-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-imageparticle-example.png https://developer.ubuntu.com/static/devportal_uploaded/a9cade54-08e9-4032-9747-ad84961db968-api/apps/qml/sdk-15.04.6/qtquick-particles-imageparticle-example/images/qml-imageparticle-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a9cade54-08e9-4032-9747-ad84961db968-api\/apps\/qml\/sdk-15.04.6\/qtquick-particles-imageparticle-example\/images\/qml-imageparticle-example.png/..\/..\/media\/qml-imageparticle-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-positioners-example.png https://developer.ubuntu.com/static/devportal_uploaded/036edba5-568b-4c77-9de3-92587c537222-api/apps/qml/sdk-15.04.6/qtquick-positioners-example/images/qml-positioners-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/036edba5-568b-4c77-9de3-92587c537222-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioners-example\/images\/qml-positioners-example.png/..\/..\/media\/qml-positioners-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edges_qml.png https://developer.ubuntu.com/static/devportal_uploaded/7ad550a8-a766-4fa2-927a-ceb8aa4ba8e9-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edges_qml.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7ad550a8-a766-4fa2-927a-ceb8aa4ba8e9-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-anchors\/images\/edges_qml.png/..\/..\/media\/edges_qml.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edge1.png https://developer.ubuntu.com/static/devportal_uploaded/bd07f866-1c4a-498d-97a0-d35e1466c67a-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edge1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bd07f866-1c4a-498d-97a0-d35e1466c67a-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-anchors\/images\/edge1.png/..\/..\/media\/edge1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edge3.png https://developer.ubuntu.com/static/devportal_uploaded/968ce271-0c7c-43d2-9ed6-d5ca8962e711-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edge3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/968ce271-0c7c-43d2-9ed6-d5ca8962e711-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-anchors\/images\/edge3.png/..\/..\/media\/edge3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edge4.png https://developer.ubuntu.com/static/devportal_uploaded/0e68c534-6dca-4e75-b4b6-bc08604797d4-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edge4.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0e68c534-6dca-4e75-b4b6-bc08604797d4-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-anchors\/images\/edge4.png/..\/..\/media\/edge4.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/margins_qml.png https://developer.ubuntu.com/static/devportal_uploaded/9c78d10e-3171-4e33-a8f2-2e912fd54129-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/margins_qml.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9c78d10e-3171-4e33-a8f2-2e912fd54129-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-anchors\/images\/margins_qml.png/..\/..\/media\/margins_qml.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/edge2.png https://developer.ubuntu.com/static/devportal_uploaded/18a7e1dc-f5a5-4968-9134-8164ed356480-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/edge2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/18a7e1dc-f5a5-4968-9134-8164ed356480-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-anchors\/images\/edge2.png/..\/..\/media\/edge2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/anchor_ordering_bad.png https://developer.ubuntu.com/static/devportal_uploaded/e4cb5d99-1151-46a9-8c71-8ce2d8c3c7fe-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/anchor_ordering_bad.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e4cb5d99-1151-46a9-8c71-8ce2d8c3c7fe-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-anchors\/images\/anchor_ordering_bad.png/..\/..\/media\/anchor_ordering_bad.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/anchor_ordering.png https://developer.ubuntu.com/static/devportal_uploaded/649e9a0c-31c8-4cad-abe5-e8fe9b8fa9ca-api/apps/qml/sdk-15.04.6/qtquick-positioning-anchors/images/anchor_ordering.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/649e9a0c-31c8-4cad-abe5-e8fe9b8fa9ca-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-anchors\/images\/anchor_ordering.png/..\/..\/media\/anchor_ordering.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-column.png https://developer.ubuntu.com/static/devportal_uploaded/63c1fbbc-6072-45ae-9b40-370ed72a7724-api/apps/qml/sdk-15.04.6/qtquick-positioning-layouts/images/qml-column.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/63c1fbbc-6072-45ae-9b40-370ed72a7724-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-layouts\/images\/qml-column.png/..\/..\/media\/qml-column.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-row.png https://developer.ubuntu.com/static/devportal_uploaded/a5ed0db4-b2e4-4355-b2d3-909b55918f25-api/apps/qml/sdk-15.04.6/qtquick-positioning-layouts/images/qml-row.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a5ed0db4-b2e4-4355-b2d3-909b55918f25-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-layouts\/images\/qml-row.png/..\/..\/media\/qml-row.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-grid-spacing.png https://developer.ubuntu.com/static/devportal_uploaded/f114f251-d183-49eb-8364-8b1ab9016234-api/apps/qml/sdk-15.04.6/qtquick-positioning-layouts/images/qml-grid-spacing.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f114f251-d183-49eb-8364-8b1ab9016234-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-layouts\/images\/qml-grid-spacing.png/..\/..\/media\/qml-grid-spacing.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-flow-text2.png https://developer.ubuntu.com/static/devportal_uploaded/559a0bc1-7c04-4389-ab9b-febc48e9a4a5-api/apps/qml/sdk-15.04.6/qtquick-positioning-layouts/images/qml-flow-text2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/559a0bc1-7c04-4389-ab9b-febc48e9a4a5-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-layouts\/images\/qml-flow-text2.png/..\/..\/media\/qml-flow-text2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/manual-layout.png https://developer.ubuntu.com/static/devportal_uploaded/5ebe9045-ab17-4d90-a59e-d22af113c302-api/apps/qml/sdk-15.04.6/qtquick-positioning-topic/images/manual-layout.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5ebe9045-ab17-4d90-a59e-d22af113c302-api\/apps\/qml\/sdk-15.04.6\/qtquick-positioning-topic\/images\/manual-layout.png/..\/..\/media\/manual-layout.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-system-example.png https://developer.ubuntu.com/static/devportal_uploaded/9dceeb05-edc7-48df-b745-ee0be71ab4b2-api/apps/qml/sdk-15.04.6/qtquick-particles-system-example/images/qml-system-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9dceeb05-edc7-48df-b745-ee0be71ab4b2-api\/apps\/qml\/sdk-15.04.6\/qtquick-particles-system-example\/images\/qml-system-example.png/..\/..\/media\/qml-system-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtquickwidgets-example.png https://developer.ubuntu.com/static/devportal_uploaded/4cfe1bc1-8119-4fc8-b02f-4f33d99c834c-api/apps/qml/sdk-15.04.6/qtquick-quickwidgets-quickwidget-example/images/qtquickwidgets-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4cfe1bc1-8119-4fc8-b02f-4f33d99c834c-api\/apps\/qml\/sdk-15.04.6\/qtquick-quickwidgets-quickwidget-example\/images\/qtquickwidgets-example.png/..\/..\/media\/qtquickwidgets-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/rendercontrol-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/912e195d-3b47-40c9-8d66-2603987ac555-api/apps/qml/sdk-15.04.6/qtquick-rendercontrol-example/images/rendercontrol-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/912e195d-3b47-40c9-8d66-2603987ac555-api\/apps\/qml\/sdk-15.04.6\/qtquick-rendercontrol-example\/images\/rendercontrol-example.jpg/..\/..\/media\/rendercontrol-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-righttoleft-example.png https://developer.ubuntu.com/static/devportal_uploaded/9e733f15-3b7c-4e12-ad09-e48f5ddbfa3a-api/apps/qml/sdk-15.04.6/qtquick-righttoleft-example/images/qml-righttoleft-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9e733f15-3b7c-4e12-ad09-e48f5ddbfa3a-api\/apps\/qml\/sdk-15.04.6\/qtquick-righttoleft-example\/images\/qml-righttoleft-example.png/..\/..\/media\/qml-righttoleft-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/custom-geometry-example.png https://developer.ubuntu.com/static/devportal_uploaded/788cad1c-c9d9-48f0-b702-c3b4331c7957-api/apps/qml/sdk-15.04.6/qtquick-scenegraph-customgeometry-example/images/custom-geometry-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/788cad1c-c9d9-48f0-b702-c3b4331c7957-api\/apps\/qml\/sdk-15.04.6\/qtquick-scenegraph-customgeometry-example\/images\/custom-geometry-example.png/..\/..\/media\/custom-geometry-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/graph-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/9ac5996f-42b4-4ff5-99c9-3688fb03e2a4-api/apps/qml/sdk-15.04.6/qtquick-scenegraph-graph-example/images/graph-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9ac5996f-42b4-4ff5-99c9-3688fb03e2a4-api\/apps\/qml\/sdk-15.04.6\/qtquick-scenegraph-graph-example\/images\/graph-example.jpg/..\/..\/media\/graph-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/openglunderqml-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/1b770bdc-ad4f-4754-84ee-557b45323713-api/apps/qml/sdk-15.04.6/qtquick-scenegraph-openglunderqml-example/images/openglunderqml-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1b770bdc-ad4f-4754-84ee-557b45323713-api\/apps\/qml\/sdk-15.04.6\/qtquick-scenegraph-openglunderqml-example\/images\/openglunderqml-example.jpg/..\/..\/media\/openglunderqml-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simplematerial-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/3a3f4ab0-dec0-4c49-946a-836bd880a445-api/apps/qml/sdk-15.04.6/qtquick-scenegraph-simplematerial-example/images/simplematerial-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3a3f4ab0-dec0-4c49-946a-836bd880a445-api\/apps\/qml\/sdk-15.04.6\/qtquick-scenegraph-simplematerial-example\/images\/simplematerial-example.jpg/..\/..\/media\/simplematerial-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/textureinsgnode-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/8f8b879b-5163-4979-bbbd-9c4aea0bb2cc-api/apps/qml/sdk-15.04.6/qtquick-scenegraph-textureinsgnode-example/images/textureinsgnode-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8f8b879b-5163-4979-bbbd-9c4aea0bb2cc-api\/apps\/qml\/sdk-15.04.6\/qtquick-scenegraph-textureinsgnode-example\/images\/textureinsgnode-example.jpg/..\/..\/media\/textureinsgnode-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/textureinthread-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/39f71b99-e8c9-419e-962b-8daf59561dc8-api/apps/qml/sdk-15.04.6/qtquick-scenegraph-textureinthread-example/images/textureinthread-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/39f71b99-e8c9-419e-962b-8daf59561dc8-api\/apps\/qml\/sdk-15.04.6\/qtquick-scenegraph-textureinthread-example\/images\/textureinthread-example.jpg/..\/..\/media\/textureinthread-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/twotextureproviders-example.jpg https://developer.ubuntu.com/static/devportal_uploaded/6d4f88f1-1106-4254-a923-0ac1859790fb-api/apps/qml/sdk-15.04.6/qtquick-scenegraph-twotextureproviders-example/images/twotextureproviders-example.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6d4f88f1-1106-4254-a923-0ac1859790fb-api\/apps\/qml\/sdk-15.04.6\/qtquick-scenegraph-twotextureproviders-example\/images\/twotextureproviders-example.jpg/..\/..\/media\/twotextureproviders-example.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-shadereffects-example.png https://developer.ubuntu.com/static/devportal_uploaded/427c55e8-d7e5-4caf-86dc-203b4250ff3a-api/apps/qml/sdk-15.04.6/qtquick-shadereffects-example/images/qml-shadereffects-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/427c55e8-d7e5-4caf-86dc-203b4250ff3a-api\/apps\/qml\/sdk-15.04.6\/qtquick-shadereffects-example\/images\/qml-shadereffects-example.png/..\/..\/media\/qml-shadereffects-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-text-example.png https://developer.ubuntu.com/static/devportal_uploaded/0229f93a-5018-4e66-a277-a57ad0a536f4-api/apps/qml/sdk-15.04.6/qtquick-text-example/images/qml-text-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0229f93a-5018-4e66-a277-a57ad0a536f4-api\/apps\/qml\/sdk-15.04.6\/qtquick-text-example\/images\/qml-text-example.png/..\/..\/media\/qml-text-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-threading-example.png https://developer.ubuntu.com/static/devportal_uploaded/0931328d-6149-430e-b9b0-4096831cd8c7-api/apps/qml/sdk-15.04.6/qtquick-threading-example/images/qml-threading-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0931328d-6149-430e-b9b0-4096831cd8c7-api\/apps\/qml\/sdk-15.04.6\/qtquick-threading-example\/images\/qml-threading-example.png/..\/..\/media\/qml-threading-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-touchinteraction-example.png https://developer.ubuntu.com/static/devportal_uploaded/22049371-c3cd-4ed2-9463-89b8674e8e03-api/apps/qml/sdk-15.04.6/qtquick-touchinteraction-example/images/qml-touchinteraction-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/22049371-c3cd-4ed2-9463-89b8674e8e03-api\/apps\/qml\/sdk-15.04.6\/qtquick-touchinteraction-example\/images\/qml-touchinteraction-example.png/..\/..\/media\/qml-touchinteraction-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-adv-tutorial1.png https://developer.ubuntu.com/static/devportal_uploaded/f48d42da-4e3f-4a40-b9cf-6859e7d80b31-api/apps/qml/sdk-15.04.6/qtquick-tutorials-samegame-samegame1-example/images/declarative-adv-tutorial1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f48d42da-4e3f-4a40-b9cf-6859e7d80b31-api\/apps\/qml\/sdk-15.04.6\/qtquick-tutorials-samegame-samegame1-example\/images\/declarative-adv-tutorial1.png/..\/..\/media\/declarative-adv-tutorial1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-adv-tutorial2.png https://developer.ubuntu.com/static/devportal_uploaded/ab497a5e-048a-4165-883e-c702b460f4a8-api/apps/qml/sdk-15.04.6/qtquick-tutorials-samegame-samegame2-example/images/declarative-adv-tutorial2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ab497a5e-048a-4165-883e-c702b460f4a8-api\/apps\/qml\/sdk-15.04.6\/qtquick-tutorials-samegame-samegame2-example\/images\/declarative-adv-tutorial2.png/..\/..\/media\/declarative-adv-tutorial2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-adv-tutorial3.png https://developer.ubuntu.com/static/devportal_uploaded/9f55e297-2ec2-46fd-bb09-6205d69f5577-api/apps/qml/sdk-15.04.6/qtquick-tutorials-samegame-samegame3-example/images/declarative-adv-tutorial3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9f55e297-2ec2-46fd-bb09-6205d69f5577-api\/apps\/qml\/sdk-15.04.6\/qtquick-tutorials-samegame-samegame3-example\/images\/declarative-adv-tutorial3.png/..\/..\/media\/declarative-adv-tutorial3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-adv-tutorial4.gif https://developer.ubuntu.com/static/devportal_uploaded/34bdcec1-6a07-4d5b-add0-313a45a1066a-api/apps/qml/sdk-15.04.6/qtquick-tutorials-samegame-samegame4-example/images/declarative-adv-tutorial4.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/34bdcec1-6a07-4d5b-add0-313a45a1066a-api\/apps\/qml\/sdk-15.04.6\/qtquick-tutorials-samegame-samegame4-example\/images\/declarative-adv-tutorial4.gif/..\/..\/media\/declarative-adv-tutorial4.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-modelviews-example.png https://developer.ubuntu.com/static/devportal_uploaded/06174334-bcea-4112-b473-5240e71140f4-api/apps/qml/sdk-15.04.6/qtquick-views-example/images/qml-modelviews-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/06174334-bcea-4112-b473-5240e71140f4-api\/apps\/qml\/sdk-15.04.6\/qtquick-views-example\/images\/qml-modelviews-example.png/..\/..\/media\/qml-modelviews-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visual-coordinates-example.png https://developer.ubuntu.com/static/devportal_uploaded/c45544d2-7302-4fd4-9f93-06e9fd6a20bb-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-coordinates/images/visual-coordinates-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c45544d2-7302-4fd4-9f93-06e9fd6a20bb-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-coordinates\/images\/visual-coordinates-example.png/..\/..\/media\/visual-coordinates-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sg-renderloop-threaded.jpg https://developer.ubuntu.com/static/devportal_uploaded/b4447e54-ec17-480b-b41b-796bc4e7fe30-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph/images/sg-renderloop-threaded.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b4447e54-ec17-480b-b41b-796bc4e7fe30-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-scenegraph\/images\/sg-renderloop-threaded.jpg/..\/..\/media\/sg-renderloop-threaded.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sg-renderloop-singlethreaded.jpg https://developer.ubuntu.com/static/devportal_uploaded/d5f5d145-05d6-4ff8-8657-a1d2a8a0cf75-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph/images/sg-renderloop-singlethreaded.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d5f5d145-05d6-4ff8-8657-a1d2a8a0cf75-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-scenegraph\/images\/sg-renderloop-singlethreaded.jpg/..\/..\/media\/sg-renderloop-singlethreaded.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualcanvas_list.png https://developer.ubuntu.com/static/devportal_uploaded/ed1327dc-261b-4796-b965-85fab081fd05-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph-renderer/images/visualcanvas_list.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ed1327dc-261b-4796-b965-85fab081fd05-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualcanvas_list.png/..\/..\/media\/visualcanvas_list.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualcanvas_overlap.png https://developer.ubuntu.com/static/devportal_uploaded/47609c39-8a33-4880-8c1e-9a0ce13594be-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph-renderer/images/visualcanvas_overlap.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/47609c39-8a33-4880-8c1e-9a0ce13594be-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualcanvas_overlap.png/..\/..\/media\/visualcanvas_overlap.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualize-original.png https://developer.ubuntu.com/static/devportal_uploaded/85b31459-d5ee-4fb7-9d45-1cee94bcd471-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph-renderer/images/visualize-original.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/85b31459-d5ee-4fb7-9d45-1cee94bcd471-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualize-original.png/..\/..\/media\/visualize-original.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualize-batches.png https://developer.ubuntu.com/static/devportal_uploaded/6ba43293-418a-491d-a825-e8be89fcdabb-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph-renderer/images/visualize-batches.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6ba43293-418a-491d-a825-e8be89fcdabb-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualize-batches.png/..\/..\/media\/visualize-batches.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualize-clip.png https://developer.ubuntu.com/static/devportal_uploaded/702d74af-871e-4f3b-8e22-96d6b7d3762f-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph-renderer/images/visualize-clip.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/702d74af-871e-4f3b-8e22-96d6b7d3762f-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualize-clip.png/..\/..\/media\/visualize-clip.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visualize-overdraw-2.png https://developer.ubuntu.com/static/devportal_uploaded/b931e739-c92c-4586-acbc-067853e5d24f-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-scenegraph-renderer/images/visualize-overdraw-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b931e739-c92c-4586-acbc-067853e5d24f-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-scenegraph-renderer\/images\/visualize-overdraw-2.png/..\/..\/media\/visualize-overdraw-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visual-parent-example.png https://developer.ubuntu.com/static/devportal_uploaded/53b2c0b3-9631-475c-bb3b-c485c528414c-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-visualparent/images/visual-parent-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/53b2c0b3-9631-475c-bb3b-c485c528414c-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-visualparent\/images\/visual-parent-example.png/..\/..\/media\/visual-parent-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/visual-parent-example2.png https://developer.ubuntu.com/static/devportal_uploaded/d8392b0e-111d-4aca-9e82-de2125a5efe3-api/apps/qml/sdk-15.04.6/qtquick-visualcanvas-visualparent/images/visual-parent-example2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d8392b0e-111d-4aca-9e82-de2125a5efe3-api\/apps\/qml\/sdk-15.04.6\/qtquick-visualcanvas-visualparent\/images\/visual-parent-example2.png/..\/..\/media\/visual-parent-example2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-window-example.png https://developer.ubuntu.com/static/devportal_uploaded/842e7c46-10a5-4714-926e-3c558d9b4ca4-api/apps/qml/sdk-15.04.6/qtquick-window-example/images/qml-window-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/842e7c46-10a5-4714-926e-3c558d9b4ca4-api\/apps\/qml\/sdk-15.04.6\/qtquick-window-example\/images\/qml-window-example.png/..\/..\/media\/qml-window-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-rect.png https://developer.ubuntu.com/static/devportal_uploaded/cbe85ccf-d820-4921-811d-26f0d022cf77-api/apps/qml/sdk-15.04.6/QtQuick.Rectangle/images/declarative-rect.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cbe85ccf-d820-4921-811d-26f0d022cf77-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Rectangle\/images\/declarative-rect.png/..\/..\/media\/declarative-rect.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/rect-color.png https://developer.ubuntu.com/static/devportal_uploaded/c9adc075-25e5-4324-9682-d1a461edcf26-api/apps/qml/sdk-15.04.6/QtQuick.Rectangle/images/rect-color.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c9adc075-25e5-4324-9682-d1a461edcf26-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Rectangle\/images\/rect-color.png/..\/..\/media\/rect-color.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-rect_gradient.png https://developer.ubuntu.com/static/devportal_uploaded/03b72274-79bc-4aac-91c4-1b662e85c1a0-api/apps/qml/sdk-15.04.6/QtQuick.Rectangle/images/declarative-rect_gradient.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/03b72274-79bc-4aac-91c4-1b662e85c1a0-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Rectangle\/images\/declarative-rect_gradient.png/..\/..\/media\/declarative-rect_gradient.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater-simple.png https://developer.ubuntu.com/static/devportal_uploaded/f2cc67fd-607f-4147-b149-c7757dc61cd5-api/apps/qml/sdk-15.04.6/QtQuick.Repeater/images/repeater-simple.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f2cc67fd-607f-4147-b149-c7757dc61cd5-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Repeater\/images\/repeater-simple.png/..\/..\/media\/repeater-simple.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater.png https://developer.ubuntu.com/static/devportal_uploaded/72032ff0-37e0-479c-a7cc-a5c6dbacde29-api/apps/qml/sdk-15.04.6/QtQuick.Repeater/images/repeater.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/72032ff0-37e0-479c-a7cc-a5c6dbacde29-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Repeater\/images\/repeater.png/..\/..\/media\/repeater.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater-index.png https://developer.ubuntu.com/static/devportal_uploaded/86b8f269-b2f1-4133-b837-3be886f2f077-api/apps/qml/sdk-15.04.6/QtQuick.Repeater/images/repeater-index.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/86b8f269-b2f1-4133-b837-3be886f2f077-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Repeater\/images\/repeater-index.png/..\/..\/media\/repeater-index.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/repeater-modeldata.png https://developer.ubuntu.com/static/devportal_uploaded/550fb906-a1a5-487e-ae3e-3def237bda51-api/apps/qml/sdk-15.04.6/QtQuick.Repeater/images/repeater-modeldata.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/550fb906-a1a5-487e-ae3e-3def237bda51-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Repeater\/images\/repeater-modeldata.png/..\/..\/media\/repeater-modeldata.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/axisrotation.png https://developer.ubuntu.com/static/devportal_uploaded/0545d834-044c-4925-b340-3d816612e966-api/apps/qml/sdk-15.04.6/QtQuick.Rotation/images/axisrotation.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0545d834-044c-4925-b340-3d816612e966-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Rotation\/images\/axisrotation.png/..\/..\/media\/axisrotation.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/3d-rotation-axis.png https://developer.ubuntu.com/static/devportal_uploaded/f25ea7fc-26a0-4d59-bc80-395ed8d5ec4e-api/apps/qml/sdk-15.04.6/QtQuick.Rotation/images/3d-rotation-axis.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f25ea7fc-26a0-4d59-bc80-395ed8d5ec4e-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Rotation\/images\/3d-rotation-axis.png/..\/..\/media\/3d-rotation-axis.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/horizontalpositioner_example.png https://developer.ubuntu.com/static/devportal_uploaded/ac8dceeb-fc41-4078-a798-b3a5a43d55b3-api/apps/qml/sdk-15.04.6/QtQuick.Row/images/horizontalpositioner_example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ac8dceeb-fc41-4078-a798-b3a5a43d55b3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Row\/images\/horizontalpositioner_example.png/..\/..\/media\/horizontalpositioner_example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-shadereffectitem.png https://developer.ubuntu.com/static/devportal_uploaded/1fdb7815-5e84-464f-903e-703e4d074528-api/apps/qml/sdk-15.04.6/QtQuick.ShaderEffect/images/declarative-shadereffectitem.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1fdb7815-5e84-464f-903e-703e4d074528-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ShaderEffect\/images\/declarative-shadereffectitem.png/..\/..\/media\/declarative-shadereffectitem.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-shadereffect-layereffect.png https://developer.ubuntu.com/static/devportal_uploaded/4d21b47f-6cbe-40dd-87ca-65ece9c51116-api/apps/qml/sdk-15.04.6/QtQuick.ShaderEffect/images/qml-shadereffect-layereffect.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4d21b47f-6cbe-40dd-87ca-65ece9c51116-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ShaderEffect\/images\/qml-shadereffect-layereffect.png/..\/..\/media\/qml-shadereffect-layereffect.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-shadereffect-opacitymask.png https://developer.ubuntu.com/static/devportal_uploaded/5ea71bde-63e6-4907-8b82-fd77631ee36b-api/apps/qml/sdk-15.04.6/QtQuick.ShaderEffect/images/qml-shadereffect-opacitymask.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5ea71bde-63e6-4907-8b82-fd77631ee36b-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ShaderEffect\/images\/qml-shadereffect-opacitymask.png/..\/..\/media\/qml-shadereffect-opacitymask.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-shadereffectsource.png https://developer.ubuntu.com/static/devportal_uploaded/ea7c9037-6ca5-4840-989c-22775b23816c-api/apps/qml/sdk-15.04.6/QtQuick.ShaderEffectSource/images/declarative-shadereffectsource.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ea7c9037-6ca5-4840-989c-22775b23816c-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ShaderEffectSource\/images\/declarative-shadereffectsource.png/..\/..\/media\/declarative-shadereffectsource.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-text.png https://developer.ubuntu.com/static/devportal_uploaded/fb57ca96-43f9-4bc1-abff-d1b7896e733e-api/apps/qml/sdk-15.04.6/QtQuick.Text/images/declarative-text.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fb57ca96-43f9-4bc1-abff-d1b7896e733e-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Text\/images\/declarative-text.png/..\/..\/media\/declarative-text.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textstyle.png https://developer.ubuntu.com/static/devportal_uploaded/5bebc79b-cd62-4cfa-91f8-60686a0266a3-api/apps/qml/sdk-15.04.6/QtQuick.Text/images/declarative-textstyle.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5bebc79b-cd62-4cfa-91f8-60686a0266a3-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Text\/images\/declarative-textstyle.png/..\/..\/media\/declarative-textstyle.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textformat.png https://developer.ubuntu.com/static/devportal_uploaded/74690b4b-64aa-4156-9c50-fc005ee97c04-api/apps/qml/sdk-15.04.6/QtQuick.Text/images/declarative-textformat.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/74690b4b-64aa-4156-9c50-fc005ee97c04-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Text\/images\/declarative-textformat.png/..\/..\/media\/declarative-textformat.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textedit.gif https://developer.ubuntu.com/static/devportal_uploaded/f0ac087e-73d7-4fb6-91db-4cc7cbc98374-api/apps/qml/sdk-15.04.6/QtQuick.TextEdit/images/declarative-textedit.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f0ac087e-73d7-4fb6-91db-4cc7cbc98374-api\/apps\/qml\/sdk-15.04.6\/QtQuick.TextEdit\/images\/declarative-textedit.gif/..\/..\/media\/declarative-textedit.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/declarative-textformat.png https://developer.ubuntu.com/static/devportal_uploaded/9eaab396-9faa-4d92-afcd-26218178f35a-api/apps/qml/sdk-15.04.6/QtQuick.TextEdit/images/declarative-textformat.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9eaab396-9faa-4d92-afcd-26218178f35a-api\/apps\/qml\/sdk-15.04.6\/QtQuick.TextEdit\/images\/declarative-textformat.png/..\/..\/media\/declarative-textformat.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/translate.png https://developer.ubuntu.com/static/devportal_uploaded/674431e9-414d-4002-ac73-6b1d64cb749f-api/apps/qml/sdk-15.04.6/QtQuick.Translate/images/translate.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/674431e9-414d-4002-ac73-6b1d64cb749f-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Translate\/images\/translate.png/..\/..\/media\/translate.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-basic.gif https://developer.ubuntu.com/static/devportal_uploaded/d623c76c-0cda-4ce5-8dbc-89f032e973cd-api/apps/qml/sdk-15.04.6/QtQuick.ViewTransition/images/viewtransitions-basic.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d623c76c-0cda-4ce5-8dbc-89f032e973cd-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ViewTransition\/images\/viewtransitions-basic.gif/..\/..\/media\/viewtransitions-basic.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-delayedbyindex.gif https://developer.ubuntu.com/static/devportal_uploaded/5da64b24-a065-4beb-9328-f5d63ba6e0f7-api/apps/qml/sdk-15.04.6/QtQuick.ViewTransition/images/viewtransitions-delayedbyindex.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5da64b24-a065-4beb-9328-f5d63ba6e0f7-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ViewTransition\/images\/viewtransitions-delayedbyindex.gif/..\/..\/media\/viewtransitions-delayedbyindex.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-intermediatemove.gif https://developer.ubuntu.com/static/devportal_uploaded/fdacc9b0-2ba4-4f2a-bf60-d9e65a60891b-api/apps/qml/sdk-15.04.6/QtQuick.ViewTransition/images/viewtransitions-intermediatemove.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fdacc9b0-2ba4-4f2a-bf60-d9e65a60891b-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ViewTransition\/images\/viewtransitions-intermediatemove.gif/..\/..\/media\/viewtransitions-intermediatemove.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-pathanim.gif https://developer.ubuntu.com/static/devportal_uploaded/9b6b6c8b-2af4-47c4-bae7-7cc91b9b4348-api/apps/qml/sdk-15.04.6/QtQuick.ViewTransition/images/viewtransitions-pathanim.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9b6b6c8b-2af4-47c4-bae7-7cc91b9b4348-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ViewTransition\/images\/viewtransitions-pathanim.gif/..\/..\/media\/viewtransitions-pathanim.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-interruptedbad.gif https://developer.ubuntu.com/static/devportal_uploaded/4599d31c-06a5-4e48-8660-5a2f7c19a34a-api/apps/qml/sdk-15.04.6/QtQuick.ViewTransition/images/viewtransitions-interruptedbad.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4599d31c-06a5-4e48-8660-5a2f7c19a34a-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ViewTransition\/images\/viewtransitions-interruptedbad.gif/..\/..\/media\/viewtransitions-interruptedbad.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-interruptedgood.gif https://developer.ubuntu.com/static/devportal_uploaded/fb205c79-85b9-4553-a982-43408a7a0108-api/apps/qml/sdk-15.04.6/QtQuick.ViewTransition/images/viewtransitions-interruptedgood.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fb205c79-85b9-4553-a982-43408a7a0108-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ViewTransition\/images\/viewtransitions-interruptedgood.gif/..\/..\/media\/viewtransitions-interruptedgood.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/viewtransitions-scriptactionbad.gif https://developer.ubuntu.com/static/devportal_uploaded/4af3ec78-1f89-4084-960f-ef9502500b40-api/apps/qml/sdk-15.04.6/QtQuick.ViewTransition/images/viewtransitions-scriptactionbad.gif
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4af3ec78-1f89-4084-960f-ef9502500b40-api\/apps\/qml\/sdk-15.04.6\/QtQuick.ViewTransition\/images\/viewtransitions-scriptactionbad.gif/..\/..\/media\/viewtransitions-scriptactionbad.gif/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/screen-and-window-dimensions.jpg https://developer.ubuntu.com/static/devportal_uploaded/42fbda2b-01a4-45df-97c7-65ff858ababf-api/apps/qml/sdk-15.04.6/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/42fbda2b-01a4-45df-97c7-65ff858ababf-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Window.Window\/images\/screen-and-window-dimensions.jpg/..\/..\/media\/screen-and-window-dimensions.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/screen-and-window-dimensions.jpg https://developer.ubuntu.com/static/devportal_uploaded/8ac2d524-ac5f-450b-a832-f27e91939493-api/apps/qml/sdk-15.04.6/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8ac2d524-ac5f-450b-a832-f27e91939493-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Window.Window\/images\/screen-and-window-dimensions.jpg/..\/..\/media\/screen-and-window-dimensions.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/screen-and-window-dimensions.jpg https://developer.ubuntu.com/static/devportal_uploaded/510301fe-874d-49a1-aa4e-d6ade79432bf-api/apps/qml/sdk-15.04.6/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/510301fe-874d-49a1-aa4e-d6ade79432bf-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Window.Window\/images\/screen-and-window-dimensions.jpg/..\/..\/media\/screen-and-window-dimensions.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/screen-and-window-dimensions.jpg https://developer.ubuntu.com/static/devportal_uploaded/261a33a9-e26d-4e78-aa29-85589698cecc-api/apps/qml/sdk-15.04.6/QtQuick.Window.Window/images/screen-and-window-dimensions.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/261a33a9-e26d-4e78-aa29-85589698cecc-api\/apps\/qml\/sdk-15.04.6\/QtQuick.Window.Window\/images\/screen-and-window-dimensions.jpg/..\/..\/media\/screen-and-window-dimensions.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qml-xmllistmodel-example.png https://developer.ubuntu.com/static/devportal_uploaded/054de995-712b-4834-8430-397360ad4f86-api/apps/qml/sdk-15.04.6/QtQuick.XmlListModel.XmlListModel/images/qml-xmllistmodel-example.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/054de995-712b-4834-8430-397360ad4f86-api\/apps\/qml\/sdk-15.04.6\/QtQuick.XmlListModel.XmlListModel\/images\/qml-xmllistmodel-example.png/..\/..\/media\/qml-xmllistmodel-example.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-static.png https://developer.ubuntu.com/static/devportal_uploaded/c1e3ee7f-1c9e-4d57-ad73-973e830b1ffe-api/apps/qml/sdk-15.04.6/dynamic-sensor-backend-registration/images/sensors-static.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c1e3ee7f-1c9e-4d57-ad73-973e830b1ffe-api\/apps\/qml\/sdk-15.04.6\/dynamic-sensor-backend-registration\/images\/sensors-static.png/..\/..\/media\/sensors-static.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-dynamic.png https://developer.ubuntu.com/static/devportal_uploaded/9c8420f2-cbc5-4467-8f0b-8ee07b1d2bdb-api/apps/qml/sdk-15.04.6/dynamic-sensor-backend-registration/images/sensors-dynamic.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9c8420f2-cbc5-4467-8f0b-8ee07b1d2bdb-api\/apps\/qml\/sdk-15.04.6\/dynamic-sensor-backend-registration\/images\/sensors-dynamic.png/..\/..\/media\/sensors-dynamic.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/accelbubble.png https://developer.ubuntu.com/static/devportal_uploaded/5d9c093a-8c24-4f66-bec3-40030ec7141a-api/apps/qml/sdk-15.04.6/qtsensors-accelbubble-example/images/accelbubble.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5d9c093a-8c24-4f66-bec3-40030ec7141a-api\/apps\/qml\/sdk-15.04.6\/qtsensors-accelbubble-example\/images\/accelbubble.png/..\/..\/media\/accelbubble.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-coordinates.jpg https://developer.ubuntu.com/static/devportal_uploaded/5bef1e27-c2a7-4b31-b3a2-da80f073cdd6-api/apps/qml/sdk-15.04.6/qtsensors-cpp/images/sensors-coordinates.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5bef1e27-c2a7-4b31-b3a2-da80f073cdd6-api\/apps\/qml\/sdk-15.04.6\/qtsensors-cpp\/images\/sensors-coordinates.jpg/..\/..\/media\/sensors-coordinates.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-coordinates2.jpg https://developer.ubuntu.com/static/devportal_uploaded/46d579b6-05f9-4b44-917d-ec2626565afb-api/apps/qml/sdk-15.04.6/qtsensors-cpp/images/sensors-coordinates2.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/46d579b6-05f9-4b44-917d-ec2626565afb-api\/apps\/qml\/sdk-15.04.6\/qtsensors-cpp\/images\/sensors-coordinates2.jpg/..\/..\/media\/sensors-coordinates2.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-coordinates3.jpg https://developer.ubuntu.com/static/devportal_uploaded/345f9573-7920-4776-9953-d05e4aa537ee-api/apps/qml/sdk-15.04.6/qtsensors-cpp/images/sensors-coordinates3.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/345f9573-7920-4776-9953-d05e4aa537ee-api\/apps\/qml\/sdk-15.04.6\/qtsensors-cpp\/images\/sensors-coordinates3.jpg/..\/..\/media\/sensors-coordinates3.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-sides2.jpg https://developer.ubuntu.com/static/devportal_uploaded/548dc107-a81e-4e7a-ad86-ec9c13d7d422-api/apps/qml/sdk-15.04.6/qtsensors-cpp/images/sensors-sides2.jpg
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/548dc107-a81e-4e7a-ad86-ec9c13d7d422-api\/apps\/qml\/sdk-15.04.6\/qtsensors-cpp\/images\/sensors-sides2.jpg/..\/..\/media\/sensors-sides2.jpg/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensors-overview.png https://developer.ubuntu.com/static/devportal_uploaded/d5b1505a-9d0b-4d30-bb39-9f4b512709ff-api/apps/qml/sdk-15.04.6/qtsensors-cpp/images/sensors-overview.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d5b1505a-9d0b-4d30-bb39-9f4b512709ff-api\/apps\/qml\/sdk-15.04.6\/qtsensors-cpp\/images\/sensors-overview.png/..\/..\/media\/sensors-overview.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtsensors-examples-grue.png https://developer.ubuntu.com/static/devportal_uploaded/fb007fa1-d987-44c2-ad1b-6a5836133f95-api/apps/qml/sdk-15.04.6/qtsensors-grue-example/images/qtsensors-examples-grue.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fb007fa1-d987-44c2-ad1b-6a5836133f95-api\/apps\/qml\/sdk-15.04.6\/qtsensors-grue-example\/images\/qtsensors-examples-grue.png/..\/..\/media\/qtsensors-examples-grue.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/maze.png https://developer.ubuntu.com/static/devportal_uploaded/f75ef1d6-82ba-46bb-9d8d-bcf4f464d483-api/apps/qml/sdk-15.04.6/qtsensors-maze-example/images/maze.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f75ef1d6-82ba-46bb-9d8d-bcf4f464d483-api\/apps\/qml\/sdk-15.04.6\/qtsensors-maze-example\/images\/maze.png/..\/..\/media\/maze.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qmlqtsensors.png https://developer.ubuntu.com/static/devportal_uploaded/4cd1d40f-bf99-4851-a56b-570c94adeae7-api/apps/qml/sdk-15.04.6/qtsensors-qmlqtsensors-example/images/qmlqtsensors.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4cd1d40f-bf99-4851-a56b-570c94adeae7-api\/apps\/qml\/sdk-15.04.6\/qtsensors-qmlqtsensors-example\/images\/qmlqtsensors.png/..\/..\/media\/qmlqtsensors.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/qtsensors-examples-explorer.png https://developer.ubuntu.com/static/devportal_uploaded/46918d8e-69ee-48e0-8562-f382e0c522a6-api/apps/qml/sdk-15.04.6/qtsensors-sensor-explorer-example/images/qtsensors-examples-explorer.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/46918d8e-69ee-48e0-8562-f382e0c522a6-api\/apps\/qml\/sdk-15.04.6\/qtsensors-sensor-explorer-example\/images\/qtsensors-examples-explorer.png/..\/..\/media\/qtsensors-examples-explorer.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sensorgesturecpp.png https://developer.ubuntu.com/static/devportal_uploaded/94c78a49-e4a3-4681-98c3-8ecd2e68b530-api/apps/qml/sdk-15.04.6/qtsensors-sensorgestures-example/images/sensorgesturecpp.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/94c78a49-e4a3-4681-98c3-8ecd2e68b530-api\/apps\/qml\/sdk-15.04.6\/qtsensors-sensorgestures-example\/images\/sensorgesturecpp.png/..\/..\/media\/sensorgesturecpp.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/shakeit.png https://developer.ubuntu.com/static/devportal_uploaded/70e1c128-5988-4a4b-8812-cfb8d3aeb63b-api/apps/qml/sdk-15.04.6/qtsensors-shakeit-example/images/shakeit.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/70e1c128-5988-4a4b-8812-cfb8d3aeb63b-api\/apps\/qml\/sdk-15.04.6\/qtsensors-shakeit-example\/images\/shakeit.png/..\/..\/media\/shakeit.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/SlotsLayout_centerVertically.png https://developer.ubuntu.com/static/devportal_uploaded/a9796aeb-d599-4f08-8e57-31843ebf5cb9-api/apps/qml/sdk-15.04.6/Ubuntu.Components.SlotsLayout/images/SlotsLayout_centerVertically.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a9796aeb-d599-4f08-8e57-31843ebf5cb9-api\/apps\/qml\/sdk-15.04.6\/Ubuntu.Components.SlotsLayout\/images\/SlotsLayout_centerVertically.png/..\/..\/media\/SlotsLayout_centerVertically.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/SlotsLayout_alignToTop.png https://developer.ubuntu.com/static/devportal_uploaded/e67ec44d-2299-4d33-9254-d819e7e461f8-api/apps/qml/sdk-15.04.6/Ubuntu.Components.SlotsLayout/images/SlotsLayout_alignToTop.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e67ec44d-2299-4d33-9254-d819e7e461f8-api\/apps\/qml\/sdk-15.04.6\/Ubuntu.Components.SlotsLayout\/images\/SlotsLayout_alignToTop.png/..\/..\/media\/SlotsLayout_alignToTop.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/sample-layout.png https://developer.ubuntu.com/static/devportal_uploaded/789046e7-ef38-470e-a7b3-4ef64d7493e9-api/apps/qml/sdk-15.04.6/ubuntu-layouts1/images/sample-layout.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/789046e7-ef38-470e-a7b3-4ef64d7493e9-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts1\/images\/sample-layout.png/..\/..\/media\/sample-layout.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout2.png https://developer.ubuntu.com/static/devportal_uploaded/643dd195-5d90-4465-a6d4-876815ca1eea-api/apps/qml/sdk-15.04.6/ubuntu-layouts3/images/layout2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/643dd195-5d90-4465-a6d4-876815ca1eea-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts3\/images\/layout2.png/..\/..\/media\/layout2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/default-layout.png https://developer.ubuntu.com/static/devportal_uploaded/1c832643-ea30-42d0-a105-6094ee63fb07-api/apps/qml/sdk-15.04.6/ubuntu-layouts2/images/default-layout.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1c832643-ea30-42d0-a105-6094ee63fb07-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts2\/images\/default-layout.png/..\/..\/media\/default-layout.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout1.png https://developer.ubuntu.com/static/devportal_uploaded/350cd357-3677-4eac-8b79-25d35852275f-api/apps/qml/sdk-15.04.6/ubuntu-layouts2/images/layout1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/350cd357-3677-4eac-8b79-25d35852275f-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts2\/images\/layout1.png/..\/..\/media\/layout1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout3.png https://developer.ubuntu.com/static/devportal_uploaded/3ba9f8fc-584a-4922-8b17-962614beb83f-api/apps/qml/sdk-15.04.6/ubuntu-layouts4/images/layout3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3ba9f8fc-584a-4922-8b17-962614beb83f-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts4\/images\/layout3.png/..\/..\/media\/layout3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout6.png https://developer.ubuntu.com/static/devportal_uploaded/f438a760-1e21-47dc-bdc0-9328e90631a5-api/apps/qml/sdk-15.04.6/ubuntu-layouts5/images/layout6.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f438a760-1e21-47dc-bdc0-9328e90631a5-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts5\/images\/layout6.png/..\/..\/media\/layout6.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout6-2.png https://developer.ubuntu.com/static/devportal_uploaded/93fac175-6c6c-47a5-a7e9-66a46f66eb75-api/apps/qml/sdk-15.04.6/ubuntu-layouts5/images/layout6-2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/93fac175-6c6c-47a5-a7e9-66a46f66eb75-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts5\/images\/layout6-2.png/..\/..\/media\/layout6-2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/layout7.png https://developer.ubuntu.com/static/devportal_uploaded/e8f29d42-5943-482a-ae85-547ff21283df-api/apps/qml/sdk-15.04.6/ubuntu-layouts6/images/layout7.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e8f29d42-5943-482a-ae85-547ff21283df-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts6\/images\/layout7.png/..\/..\/media\/layout7.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout1.png https://developer.ubuntu.com/static/devportal_uploaded/2614cfe7-7b80-4b2b-9254-9b9624d655e3-api/apps/qml/sdk-15.04.6/ubuntu-layouts7/images/simple-layout1.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2614cfe7-7b80-4b2b-9254-9b9624d655e3-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts7\/images\/simple-layout1.png/..\/..\/media\/simple-layout1.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout2.png https://developer.ubuntu.com/static/devportal_uploaded/77d929c7-32ad-483b-8ba3-0af442958f11-api/apps/qml/sdk-15.04.6/ubuntu-layouts7/images/simple-layout2.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/77d929c7-32ad-483b-8ba3-0af442958f11-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts7\/images\/simple-layout2.png/..\/..\/media\/simple-layout2.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout3.png https://developer.ubuntu.com/static/devportal_uploaded/fde8b66a-ac96-447b-8ac0-e1f54572eb19-api/apps/qml/sdk-15.04.6/ubuntu-layouts7/images/simple-layout3.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fde8b66a-ac96-447b-8ac0-e1f54572eb19-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts7\/images\/simple-layout3.png/..\/..\/media\/simple-layout3.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout4.png https://developer.ubuntu.com/static/devportal_uploaded/b8b9983d-981e-449f-864f-245bbd26edd6-api/apps/qml/sdk-15.04.6/ubuntu-layouts7/images/simple-layout4.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b8b9983d-981e-449f-864f-245bbd26edd6-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts7\/images\/simple-layout4.png/..\/..\/media\/simple-layout4.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/simple-layout5.png https://developer.ubuntu.com/static/devportal_uploaded/1767d47b-3bfb-4861-8a6c-1df601e449f6-api/apps/qml/sdk-15.04.6/ubuntu-layouts7/images/simple-layout5.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1767d47b-3bfb-4861-8a6c-1df601e449f6-api\/apps\/qml\/sdk-15.04.6\/ubuntu-layouts7\/images\/simple-layout5.png/..\/..\/media\/simple-layout5.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/surudark-theme.png https://developer.ubuntu.com/static/devportal_uploaded/4c66467b-88bb-48ec-8ff9-ca10c22eb301-api/apps/qml/sdk-15.04.6/ubuntu-theming-themes/images/surudark-theme.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4c66467b-88bb-48ec-8ff9-ca10c22eb301-api\/apps\/qml\/sdk-15.04.6\/ubuntu-theming-themes\/images\/surudark-theme.png/..\/..\/media\/surudark-theme.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/surudark-theme-13.png https://developer.ubuntu.com/static/devportal_uploaded/0cf2f06d-e81a-4482-be13-e5b2964a19c6-api/apps/qml/sdk-15.04.6/ubuntu-theming-themes/images/surudark-theme-13.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0cf2f06d-e81a-4482-be13-e5b2964a19c6-api\/apps\/qml\/sdk-15.04.6\/ubuntu-theming-themes\/images\/surudark-theme-13.png/..\/..\/media\/surudark-theme-13.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/8f181c68-ed9b-4100-a49c-20492a1e6e93-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActionMetadata/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8f181c68-ed9b-4100-a49c-20492a1e6e93-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ActionMetadata\/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/a07b9672-ec04-4a7d-b014-d0b716ef0e5c-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActionMetadata/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a07b9672-ec04-4a7d-b014-d0b716ef0e5c-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ActionMetadata\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/17223c4e-10b7-4b14-aaf9-c046d80bc824-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActionMetadata/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/17223c4e-10b7-4b14-aaf9-c046d80bc824-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ActionMetadata\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/cbcd8661-1881-49e9-bce9-b0c230e33bcf-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActivationListenerBase/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cbcd8661-1881-49e9-bce9-b0c230e33bcf-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ActivationListenerBase\/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/d42c1b69-11db-4a8b-853d-0d212109f55c-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActivationListenerBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d42c1b69-11db-4a8b-853d-0d212109f55c-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ActivationListenerBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/a6aa3dcd-df58-4be5-889c-c3a22937fe85-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActivationQueryBase/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a6aa3dcd-df58-4be5-889c-c3a22937fe85-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ActivationQueryBase\/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/c7980c55-0ca5-4fa5-8506-4bdc628af04e-api/scopes/cpp/sdk-15.04.4/unity.scopes.ActivationQueryBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c7980c55-0ca5-4fa5-8506-4bdc628af04e-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ActivationQueryBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_category__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/2ac93ee0-62ef-4dc5-ad9d-d728e33d7bab-api/scopes/cpp/sdk-15.04.4/unity.scopes.Category/classunity_1_1scopes_1_1_category__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2ac93ee0-62ef-4dc5-ad9d-d728e33d7bab-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Category\/classunity_1_1scopes_1_1_category__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_category__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/b03e47f6-2b74-4dc3-89e2-854c6844e256-api/scopes/cpp/sdk-15.04.4/unity.scopes.CategorisedResult/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b03e47f6-2b74-4dc3-89e2-854c6844e256-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.CategorisedResult\/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/a8107957-43ef-4d6b-80b3-1f6ff44e48d1-api/scopes/cpp/sdk-15.04.4/unity.scopes.CategorisedResult/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a8107957-43ef-4d6b-80b3-1f6ff44e48d1-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.CategorisedResult\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_config_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/dcaaf72a-b36a-426d-8b73-0b6e40a41ff3-api/scopes/cpp/sdk-15.04.4/unity.scopes.ConfigException/classunity_1_1scopes_1_1_config_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dcaaf72a-b36a-426d-8b73-0b6e40a41ff3-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ConfigException\/classunity_1_1scopes_1_1_config_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_config_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_filter_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/dff0c7f7-f6e3-4f39-a0ec-f1481831ceb5-api/scopes/cpp/sdk-15.04.4/unity.scopes.FilterBase/classunity_1_1scopes_1_1_filter_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dff0c7f7-f6e3-4f39-a0ec-f1481831ceb5-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.FilterBase\/classunity_1_1scopes_1_1_filter_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_filter_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_listener_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/01e8b630-79ac-4625-8474-9d5f93b429fd-api/scopes/cpp/sdk-15.04.4/unity.scopes.ListenerBase/classunity_1_1scopes_1_1_listener_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/01e8b630-79ac-4625-8474-9d5f93b429fd-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ListenerBase\/classunity_1_1scopes_1_1_listener_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_listener_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/0a72fac7-d267-4a7e-867c-bdb8c0d8f92f-api/scopes/cpp/sdk-15.04.4/unity.scopes.MiddlewareException/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0a72fac7-d267-4a7e-867c-bdb8c0d8f92f-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.MiddlewareException\/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/90474ec5-3dee-4cf5-abb0-a43f072a07c7-api/scopes/cpp/sdk-15.04.4/unity.scopes.NotFoundException/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/90474ec5-3dee-4cf5-abb0-a43f072a07c7-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.NotFoundException\/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_object__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/5036301b-7bb5-4ac6-892b-342f28290393-api/scopes/cpp/sdk-15.04.4/unity.scopes.Object/classunity_1_1scopes_1_1_object__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5036301b-7bb5-4ac6-892b-342f28290393-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Object\/classunity_1_1scopes_1_1_object__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_object__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/12e611b8-e236-4613-aafe-3f749a85b2c5-api/scopes/cpp/sdk-15.04.4/unity.scopes.ObjectNotExistException/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/12e611b8-e236-4613-aafe-3f749a85b2c5-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ObjectNotExistException\/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/5a3e00b6-5263-46ef-ac78-98ddffcb1bfc-api/scopes/cpp/sdk-15.04.4/unity.scopes.ObjectNotExistException/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5a3e00b6-5263-46ef-ac78-98ddffcb1bfc-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ObjectNotExistException\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/a7dac9ee-7e6d-42f2-8100-1c61c59c977c-api/scopes/cpp/sdk-15.04.4/unity.scopes.OptionSelectorFilter/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a7dac9ee-7e6d-42f2-8100-1c61c59c977c-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.OptionSelectorFilter\/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/46edfc56-35e8-4cf1-829e-53e7f049c28a-api/scopes/cpp/sdk-15.04.4/unity.scopes.OptionSelectorFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/46edfc56-35e8-4cf1-829e-53e7f049c28a-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.OptionSelectorFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/e4a12ae0-e717-4940-9ff7-ce539821e22a-api/scopes/cpp/sdk-15.04.4/unity.scopes.OptionSelectorFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e4a12ae0-e717-4940-9ff7-ce539821e22a-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.OptionSelectorFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/5016060d-9ee2-4232-9067-ccf81839c7a0-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewListenerBase/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5016060d-9ee2-4232-9067-ccf81839c7a0-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.PreviewListenerBase\/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/ebe337b0-9b5e-46f9-a652-ee4fcc458140-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewListenerBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ebe337b0-9b5e-46f9-a652-ee4fcc458140-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.PreviewListenerBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/c84614df-f282-4864-8aec-606800a56f5f-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewQueryBase/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c84614df-f282-4864-8aec-606800a56f5f-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.PreviewQueryBase\/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/6058fcfd-8c54-4cb4-9396-5482656f507f-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewQueryBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6058fcfd-8c54-4cb4-9396-5482656f507f-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.PreviewQueryBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/cfafcb3c-ded9-42f6-b77b-05c240a8e0e9-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewReply/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cfafcb3c-ded9-42f6-b77b-05c240a8e0e9-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.PreviewReply\/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/b2b3d009-bc7b-4877-9cc7-243314cac2f6-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewReply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b2b3d009-bc7b-4877-9cc7-243314cac2f6-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.PreviewReply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/f8f80fd1-2d47-4fdf-82a6-122b2d4af66c-api/scopes/cpp/sdk-15.04.4/unity.scopes.PreviewReply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f8f80fd1-2d47-4fdf-82a6-122b2d4af66c-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.PreviewReply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/bf5ffbe2-46cd-43ec-a8fc-cda23add73f4-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QCategorisedResult/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/bf5ffbe2-46cd-43ec-a8fc-cda23add73f4-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QCategorisedResult\/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/c6c349ee-6e85-44be-855b-9062eb932f9f-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QCategorisedResult/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c6c349ee-6e85-44be-855b-9062eb932f9f-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QCategorisedResult\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/e46d78c5-7fdc-4f30-99ca-336274e09b15-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBase/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e46d78c5-7fdc-4f30-99ca-336274e09b15-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QPreviewQueryBase\/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/0e5dd160-8a8d-4147-8c3c-f088bfc5e978-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0e5dd160-8a8d-4147-8c3c-f088bfc5e978-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QPreviewQueryBaseAPI\/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/b33e8eff-636a-4a1e-ba0b-9b08bbee5724-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b33e8eff-636a-4a1e-ba0b-9b08bbee5724-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QPreviewQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/4f910fb8-f06c-4545-aa34-79cfc331adff-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4f910fb8-f06c-4545-aa34-79cfc331adff-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QPreviewQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/f350b8e3-7bc4-48a5-82fe-01fe90d3473b-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f350b8e3-7bc4-48a5-82fe-01fe90d3473b-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QPreviewQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/d665d4b5-ab35-4bce-ba4a-ef87667a714d-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QPreviewReply/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d665d4b5-ab35-4bce-ba4a-ef87667a714d-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QPreviewReply\/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/a3a063db-564a-42c6-8f53-23ffb5b2fb12-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QResult/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a3a063db-564a-42c6-8f53-23ffb5b2fb12-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QResult\/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/dc3cbcff-3771-4a29-b777-25fa70adcf02-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QScopeBase/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dc3cbcff-3771-4a29-b777-25fa70adcf02-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QScopeBase\/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/cf8b8813-12db-46d3-9e1f-7aa9bed01001-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QScopeBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cf8b8813-12db-46d3-9e1f-7aa9bed01001-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QScopeBaseAPI\/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/f3246472-f2de-4eb0-9bbe-05e036c1ce8e-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QScopeBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f3246472-f2de-4eb0-9bbe-05e036c1ce8e-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QScopeBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/30427f39-600b-404e-b8df-97c1d22bea00-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QScopeBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/30427f39-600b-404e-b8df-97c1d22bea00-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QScopeBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/c6a16bf5-8b03-4cd0-bae0-42267129a1d3-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QSearchQueryBase/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c6a16bf5-8b03-4cd0-bae0-42267129a1d3-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QSearchQueryBase\/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/63f6b6c2-b6fc-483e-8179-3d60a42c3c4e-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QSearchQueryBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/63f6b6c2-b6fc-483e-8179-3d60a42c3c4e-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QSearchQueryBaseAPI\/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/0c784e4b-bc3b-47b6-a570-f1312d4441fa-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QSearchQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0c784e4b-bc3b-47b6-a570-f1312d4441fa-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QSearchQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/48f91953-2db0-40b8-b707-877c1a4f662e-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QSearchQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/48f91953-2db0-40b8-b707-877c1a4f662e-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QSearchQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/1e37ff0d-4da7-4a3b-a41c-dbe878436b4b-api/scopes/cpp/sdk-15.04.4/unity.scopes.qt.QSearchReply/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1e37ff0d-4da7-4a3b-a41c-dbe878436b4b-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.qt.QSearchReply\/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/6cfc08b0-5716-42c1-aae3-cb495b01dc07-api/scopes/cpp/sdk-15.04.4/unity.scopes.QueryBase/classunity_1_1scopes_1_1_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6cfc08b0-5716-42c1-aae3-cb495b01dc07-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.QueryBase\/classunity_1_1scopes_1_1_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/beb2673e-2584-4501-9133-e5ff9ad9ec5b-api/scopes/cpp/sdk-15.04.4/unity.scopes.QueryCtrl/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/beb2673e-2584-4501-9133-e5ff9ad9ec5b-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.QueryCtrl\/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/a88cc4f7-9d5d-441e-b8af-e22263918088-api/scopes/cpp/sdk-15.04.4/unity.scopes.QueryCtrl/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a88cc4f7-9d5d-441e-b8af-e22263918088-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.QueryCtrl\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/79f62967-ce34-4755-89bf-a9f153f62826-api/scopes/cpp/sdk-15.04.4/unity.scopes.QueryMetadata/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/79f62967-ce34-4755-89bf-a9f153f62826-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.QueryMetadata\/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/1654f80c-66f9-48a2-a0d5-726ba01ac327-api/scopes/cpp/sdk-15.04.4/unity.scopes.RangeInputFilter/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1654f80c-66f9-48a2-a0d5-726ba01ac327-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.RangeInputFilter\/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/21c7accc-fcf8-4ffe-a2ac-18d8b17aea09-api/scopes/cpp/sdk-15.04.4/unity.scopes.RangeInputFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/21c7accc-fcf8-4ffe-a2ac-18d8b17aea09-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.RangeInputFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/958ffd4c-28fd-4872-b623-b3625f8b0257-api/scopes/cpp/sdk-15.04.4/unity.scopes.RangeInputFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/958ffd4c-28fd-4872-b623-b3625f8b0257-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.RangeInputFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_registry__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/d583c1d6-ccdb-4a44-b4f6-09045bb8c7f0-api/scopes/cpp/sdk-15.04.4/unity.scopes.Registry/classunity_1_1scopes_1_1_registry__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d583c1d6-ccdb-4a44-b4f6-09045bb8c7f0-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Registry\/classunity_1_1scopes_1_1_registry__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_registry__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/ae2f19b6-dc7e-408a-bec2-46b5f151d3cc-api/scopes/cpp/sdk-15.04.4/unity.scopes.Registry/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ae2f19b6-dc7e-408a-bec2-46b5f151d3cc-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Registry\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/6791ff0a-f885-455e-8b6b-3e8ddee4f845-api/scopes/cpp/sdk-15.04.4/unity.scopes.Reply/classunity_1_1scopes_1_1_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6791ff0a-f885-455e-8b6b-3e8ddee4f845-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Reply\/classunity_1_1scopes_1_1_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/d9309aca-5067-421e-ae8c-a30e87b0d6d1-api/scopes/cpp/sdk-15.04.4/unity.scopes.Reply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d9309aca-5067-421e-ae8c-a30e87b0d6d1-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Reply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/4ada4156-0b84-4e2a-9482-5aa968ae216c-api/scopes/cpp/sdk-15.04.4/unity.scopes.Result/classunity_1_1scopes_1_1_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4ada4156-0b84-4e2a-9482-5aa968ae216c-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Result\/classunity_1_1scopes_1_1_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_scope__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/67396ef0-5393-4d41-b02b-0f8b9a521f3a-api/scopes/cpp/sdk-15.04.4/unity.scopes.Scope/classunity_1_1scopes_1_1_scope__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/67396ef0-5393-4d41-b02b-0f8b9a521f3a-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Scope\/classunity_1_1scopes_1_1_scope__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_scope__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/cb9aa353-b926-4138-8dcd-2973c900ea1b-api/scopes/cpp/sdk-15.04.4/unity.scopes.Scope/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cb9aa353-b926-4138-8dcd-2973c900ea1b-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.Scope\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_scope_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/8e0d3424-0fb7-464a-b9d6-27dd15e011b9-api/scopes/cpp/sdk-15.04.4/unity.scopes.ScopeBase/classunity_1_1scopes_1_1_scope_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8e0d3424-0fb7-464a-b9d6-27dd15e011b9-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ScopeBase\/classunity_1_1scopes_1_1_scope_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_scope_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/c1730896-e0ed-46f9-b40d-b7821f9f6743-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchListenerBase/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c1730896-e0ed-46f9-b40d-b7821f9f6743-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchListenerBase\/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/001e9cc3-9ab8-4e32-9b32-e35f0fcf9dd1-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchListenerBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/001e9cc3-9ab8-4e32-9b32-e35f0fcf9dd1-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchListenerBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/de90e594-b9af-487f-b3a8-2e51440f41f2-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchMetadata/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/de90e594-b9af-487f-b3a8-2e51440f41f2-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchMetadata\/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/af265935-508e-47b4-8c0d-d42bffc0c827-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchMetadata/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/af265935-508e-47b4-8c0d-d42bffc0c827-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchMetadata\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/cb40e20b-0c6d-4403-9041-0108b252679f-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchMetadata/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/cb40e20b-0c6d-4403-9041-0108b252679f-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchMetadata\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/7c315feb-2d6d-4b73-88d5-697a2d198d91-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchQueryBase/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7c315feb-2d6d-4b73-88d5-697a2d198d91-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchQueryBase\/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/47d0063a-9bd0-4ff9-9994-228606fd3df7-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchQueryBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/47d0063a-9bd0-4ff9-9994-228606fd3df7-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchQueryBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_search_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/f8470f2c-a24b-465e-a084-ea7b447afd75-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchReply/classunity_1_1scopes_1_1_search_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f8470f2c-a24b-465e-a084-ea7b447afd75-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchReply\/classunity_1_1scopes_1_1_search_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_search_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/b0c5a149-0e9c-474c-a4dd-1d640a27a1be-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchReply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b0c5a149-0e9c-474c-a4dd-1d640a27a1be-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchReply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/ad340bc8-8432-4b29-85f6-151291a220ea-api/scopes/cpp/sdk-15.04.4/unity.scopes.SearchReply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ad340bc8-8432-4b29-85f6-151291a220ea-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.SearchReply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/c9bc73cd-3c63-4127-877e-573030221f1d-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.Benchmark/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c9bc73cd-3c63-4127-877e-573030221f1d-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.testing.Benchmark\/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/f8483c25-f0d1-484d-b99a-2232399ee17d-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.Category/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f8483c25-f0d1-484d-b99a-2232399ee17d-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.testing.Category\/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/c5d87a1b-9f42-4a4f-9da1-15ff04ecd80e-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.Category/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c5d87a1b-9f42-4a4f-9da1-15ff04ecd80e-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.testing.Category\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/32fd2e51-4bd8-419c-a19c-14f618a039a6-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.InProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/32fd2e51-4bd8-419c-a19c-14f618a039a6-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.testing.InProcessBenchmark\/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/77252b4f-3540-4adb-84b7-961bf0ca7a22-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.OutOfProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/77252b4f-3540-4adb-84b7-961bf0ca7a22-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.testing.OutOfProcessBenchmark\/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/dcbc6a4d-64e2-4261-9a32-929e823f9ae9-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.Result/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/dcbc6a4d-64e2-4261-9a32-929e823f9ae9-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.testing.Result\/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/f2bf6769-b4a4-4589-a219-3d219d7d2b4a-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.Result/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f2bf6769-b4a4-4589-a219-3d219d7d2b4a-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.testing.Result\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/feac90fb-6b37-45a0-b04c-355b1cb082f8-api/scopes/cpp/sdk-15.04.4/unity.scopes.testing.Sample/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/feac90fb-6b37-45a0-b04c-355b1cb082f8-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.testing.Sample\/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/64e496d8-9f9c-476f-a82d-98f03ab7f60c-api/scopes/cpp/sdk-15.04.4/unity.scopes.TimeoutException/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/64e496d8-9f9c-476f-a82d-98f03ab7f60c-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.TimeoutException\/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/94243ee6-f7eb-4dd5-bb15-3d52ffe8faf5-api/scopes/cpp/sdk-15.04.4/unity.scopes.TimeoutException/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/94243ee6-f7eb-4dd5-bb15-3d52ffe8faf5-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.TimeoutException\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/319079d4-6ad1-4dbb-8648-5c4a4832b51f-api/scopes/cpp/sdk-15.04.4/unity.scopes.utility.BufferedResultForwarder/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/319079d4-6ad1-4dbb-8648-5c4a4832b51f-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.utility.BufferedResultForwarder\/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/4d72ef98-90e6-43cd-95f7-d638a700bd5e-api/scopes/cpp/sdk-15.04.4/unity.scopes.utility.BufferedResultForwarder/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4d72ef98-90e6-43cd-95f7-d638a700bd5e-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.utility.BufferedResultForwarder\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/fb78e954-c283-4ea4-8162-c98ba8d0d64a-api/scopes/cpp/sdk-15.04.4/unity.scopes.utility.BufferedResultForwarder/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fb78e954-c283-4ea4-8162-c98ba8d0d64a-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.utility.BufferedResultForwarder\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/4f1b7e5d-7fce-4dd0-9519-17450027688c-api/scopes/cpp/sdk-15.04.4/unity.scopes.ValueSliderFilter/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4f1b7e5d-7fce-4dd0-9519-17450027688c-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ValueSliderFilter\/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/2cd3cc1b-9b4e-4eaa-9a04-9cdc5974cb51-api/scopes/cpp/sdk-15.04.4/unity.scopes.ValueSliderFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2cd3cc1b-9b4e-4eaa-9a04-9cdc5974cb51-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ValueSliderFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/c2c9a077-bd14-4e80-b7d3-86c38b41f153-api/scopes/cpp/sdk-15.04.4/unity.scopes.ValueSliderFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/c2c9a077-bd14-4e80-b7d3-86c38b41f153-api\/scopes\/cpp\/sdk-15.04.4\/unity.scopes.ValueSliderFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/ca208972-f5df-46ab-8c7c-b785931e84a8-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActionMetadata/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ca208972-f5df-46ab-8c7c-b785931e84a8-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ActionMetadata\/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_action_metadata__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/8bdb4add-1f36-431a-93bf-4a1c249a86f4-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActionMetadata/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8bdb4add-1f36-431a-93bf-4a1c249a86f4-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ActionMetadata\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/fb04d9f5-f47f-4286-80b9-18963cbb2c9e-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActionMetadata/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fb04d9f5-f47f-4286-80b9-18963cbb2c9e-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ActionMetadata\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/a5567ab2-2f07-44d0-9985-1830b2b33d32-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActivationListenerBase/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a5567ab2-2f07-44d0-9985-1830b2b33d32-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ActivationListenerBase\/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_activation_listener_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/b35c337a-ceec-4eb9-a960-39701bc5d6db-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActivationListenerBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b35c337a-ceec-4eb9-a960-39701bc5d6db-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ActivationListenerBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/505edda9-7e63-4566-9c0a-b8f043a082b8-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActivationQueryBase/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/505edda9-7e63-4566-9c0a-b8f043a082b8-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ActivationQueryBase\/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_activation_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/abcd9bd9-0944-41ae-99b6-a27ede5c0221-api/scopes/cpp/sdk-15.04.5/unity.scopes.ActivationQueryBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/abcd9bd9-0944-41ae-99b6-a27ede5c0221-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ActivationQueryBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/37662741-5bf8-4d90-969d-bf1a00677beb-api/scopes/cpp/sdk-15.04.5/unity.scopes.CategorisedResult/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/37662741-5bf8-4d90-969d-bf1a00677beb-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.CategorisedResult\/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_categorised_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/970db98c-a891-4cf0-ad5c-ebc17f3baf17-api/scopes/cpp/sdk-15.04.5/unity.scopes.CategorisedResult/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/970db98c-a891-4cf0-ad5c-ebc17f3baf17-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.CategorisedResult\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_category__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/5ec67155-fe5c-4461-9252-f2dc40e6051f-api/scopes/cpp/sdk-15.04.5/unity.scopes.Category/classunity_1_1scopes_1_1_category__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5ec67155-fe5c-4461-9252-f2dc40e6051f-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Category\/classunity_1_1scopes_1_1_category__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_category__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_config_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/a50dceb6-44d0-4a3f-968c-8707062dd11e-api/scopes/cpp/sdk-15.04.5/unity.scopes.ConfigException/classunity_1_1scopes_1_1_config_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a50dceb6-44d0-4a3f-968c-8707062dd11e-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ConfigException\/classunity_1_1scopes_1_1_config_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_config_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_filter_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/24fbb5f8-0877-4514-9819-56ec249d6214-api/scopes/cpp/sdk-15.04.5/unity.scopes.FilterBase/classunity_1_1scopes_1_1_filter_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/24fbb5f8-0877-4514-9819-56ec249d6214-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.FilterBase\/classunity_1_1scopes_1_1_filter_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_filter_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_listener_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/6d7beb15-cdca-4199-8d65-248c474cc2ad-api/scopes/cpp/sdk-15.04.5/unity.scopes.ListenerBase/classunity_1_1scopes_1_1_listener_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6d7beb15-cdca-4199-8d65-248c474cc2ad-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ListenerBase\/classunity_1_1scopes_1_1_listener_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_listener_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/b6f252ad-2bfc-4038-b90f-ebf32febd362-api/scopes/cpp/sdk-15.04.5/unity.scopes.MiddlewareException/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b6f252ad-2bfc-4038-b90f-ebf32febd362-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.MiddlewareException\/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_middleware_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/e2b0c844-5254-4e35-b112-488de1628428-api/scopes/cpp/sdk-15.04.5/unity.scopes.NotFoundException/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e2b0c844-5254-4e35-b112-488de1628428-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.NotFoundException\/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_not_found_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_object__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/080831a9-80c7-4614-873f-2b73f65e7f5b-api/scopes/cpp/sdk-15.04.5/unity.scopes.Object/classunity_1_1scopes_1_1_object__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/080831a9-80c7-4614-873f-2b73f65e7f5b-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Object\/classunity_1_1scopes_1_1_object__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_object__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/0d95d266-eecd-459f-82dd-278db38bee46-api/scopes/cpp/sdk-15.04.5/unity.scopes.ObjectNotExistException/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0d95d266-eecd-459f-82dd-278db38bee46-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ObjectNotExistException\/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_object_not_exist_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/ded1e895-1eb6-4a04-84ce-d02bab7fcc3c-api/scopes/cpp/sdk-15.04.5/unity.scopes.ObjectNotExistException/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ded1e895-1eb6-4a04-84ce-d02bab7fcc3c-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ObjectNotExistException\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/0612c9b6-cba6-49cb-a2c1-91e90b05aed5-api/scopes/cpp/sdk-15.04.5/unity.scopes.OptionSelectorFilter/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0612c9b6-cba6-49cb-a2c1-91e90b05aed5-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.OptionSelectorFilter\/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_option_selector_filter__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/79318c8e-7cfd-4cbb-8d5d-f237ab2283aa-api/scopes/cpp/sdk-15.04.5/unity.scopes.OptionSelectorFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/79318c8e-7cfd-4cbb-8d5d-f237ab2283aa-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.OptionSelectorFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/ac29060b-5bc4-4e00-99d1-727c5224de09-api/scopes/cpp/sdk-15.04.5/unity.scopes.OptionSelectorFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ac29060b-5bc4-4e00-99d1-727c5224de09-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.OptionSelectorFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/06cc4dd7-561e-416b-959b-397ed440c999-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewListenerBase/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/06cc4dd7-561e-416b-959b-397ed440c999-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.PreviewListenerBase\/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_preview_listener_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/a914cea5-c3fc-4f5f-a0b6-9f0e32189bb9-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewListenerBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a914cea5-c3fc-4f5f-a0b6-9f0e32189bb9-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.PreviewListenerBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/2763e997-b211-430f-a6e2-42c170f25574-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewQueryBase/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2763e997-b211-430f-a6e2-42c170f25574-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.PreviewQueryBase\/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_preview_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/d06a7fbd-f47e-4027-9e21-3cb9203d2581-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewQueryBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d06a7fbd-f47e-4027-9e21-3cb9203d2581-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.PreviewQueryBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/f226be67-1347-47b4-9c45-0ec49c3e9caf-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewReply/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f226be67-1347-47b4-9c45-0ec49c3e9caf-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.PreviewReply\/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_preview_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/d1d7ae14-7cd9-4832-a703-fbe06603c917-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewReply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d1d7ae14-7cd9-4832-a703-fbe06603c917-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.PreviewReply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/2ae8df3e-c052-4947-a89b-d55163f24d2e-api/scopes/cpp/sdk-15.04.5/unity.scopes.PreviewReply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2ae8df3e-c052-4947-a89b-d55163f24d2e-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.PreviewReply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/97532873-9804-4dad-9383-14bec9e42df8-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QCategorisedResult/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/97532873-9804-4dad-9383-14bec9e42df8-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QCategorisedResult\/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_categorised_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/d9c436fd-75ee-4f26-a53b-2e8f9042710f-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QCategorisedResult/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d9c436fd-75ee-4f26-a53b-2e8f9042710f-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QCategorisedResult\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/897c31aa-c0a1-40f8-8100-50f6ecb7cf95-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QPreviewQueryBase/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/897c31aa-c0a1-40f8-8100-50f6ecb7cf95-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QPreviewQueryBase\/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/8d2f6cf1-b06f-4b87-9018-add66a67b750-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QPreviewQueryBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8d2f6cf1-b06f-4b87-9018-add66a67b750-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QPreviewQueryBaseAPI\/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_preview_query_base_a_p_i__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/616dda8c-857e-444e-9a79-3dc18b730169-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/616dda8c-857e-444e-9a79-3dc18b730169-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QPreviewQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/672ae0ec-d832-43ae-be5d-5eae04beaba6-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/672ae0ec-d832-43ae-be5d-5eae04beaba6-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QPreviewQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/6edf5615-84e6-4f56-b8d0-71d92411711f-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QPreviewQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/6edf5615-84e6-4f56-b8d0-71d92411711f-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QPreviewQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/0bd30626-ebad-45d4-bb4b-a15f353587de-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QPreviewReply/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/0bd30626-ebad-45d4-bb4b-a15f353587de-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QPreviewReply\/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_preview_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/ebcbff77-7f91-45d4-85dd-ffb3a4193f3c-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QResult/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ebcbff77-7f91-45d4-85dd-ffb3a4193f3c-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QResult\/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/b01acb15-5744-4f19-8ac5-5f1642b36da0-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QScopeBase/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/b01acb15-5744-4f19-8ac5-5f1642b36da0-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QScopeBase\/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_scope_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/8e4944bb-da5e-448f-a1e3-7ec0566fdd8f-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QScopeBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/8e4944bb-da5e-448f-a1e3-7ec0566fdd8f-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QScopeBaseAPI\/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_scope_base_a_p_i__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/136079b6-4330-4179-bc0a-008fee23572a-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QScopeBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/136079b6-4330-4179-bc0a-008fee23572a-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QScopeBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/871ab10d-fbd2-4768-a5c4-fb3740e01725-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QScopeBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/871ab10d-fbd2-4768-a5c4-fb3740e01725-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QScopeBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/7e61e600-c962-45fa-b6d0-7e29ec2a5647-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QSearchQueryBase/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/7e61e600-c962-45fa-b6d0-7e29ec2a5647-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QSearchQueryBase\/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_search_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/9df5e201-917a-4d40-9365-728dfe84af51-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QSearchQueryBaseAPI/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9df5e201-917a-4d40-9365-728dfe84af51-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QSearchQueryBaseAPI\/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_search_query_base_a_p_i__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/1ae7a3b0-1bd9-4dc1-b266-39133375162b-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QSearchQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1ae7a3b0-1bd9-4dc1-b266-39133375162b-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QSearchQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/08b4f737-b40b-4a2c-a131-9d3674b101c5-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QSearchQueryBaseAPI/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/08b4f737-b40b-4a2c-a131-9d3674b101c5-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QSearchQueryBaseAPI\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/ec7172a3-6f65-4171-a33a-6d148623aed2-api/scopes/cpp/sdk-15.04.5/unity.scopes.qt.QSearchReply/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/ec7172a3-6f65-4171-a33a-6d148623aed2-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.qt.QSearchReply\/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1qt_1_1_q_search_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/e7f824be-ebfd-4aad-ae34-8ad1de899d3b-api/scopes/cpp/sdk-15.04.5/unity.scopes.QueryCtrl/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/e7f824be-ebfd-4aad-ae34-8ad1de899d3b-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.QueryCtrl\/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_query_ctrl__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/1144f876-762f-49c1-8db9-24cb608c5fec-api/scopes/cpp/sdk-15.04.5/unity.scopes.QueryCtrl/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1144f876-762f-49c1-8db9-24cb608c5fec-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.QueryCtrl\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/f781bf1b-ef20-45e7-8bb9-6abd9c664667-api/scopes/cpp/sdk-15.04.5/unity.scopes.QueryBase/classunity_1_1scopes_1_1_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f781bf1b-ef20-45e7-8bb9-6abd9c664667-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.QueryBase\/classunity_1_1scopes_1_1_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/a0fff6ec-1a97-4e76-a815-a9f4c0fdccc2-api/scopes/cpp/sdk-15.04.5/unity.scopes.QueryMetadata/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a0fff6ec-1a97-4e76-a815-a9f4c0fdccc2-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.QueryMetadata\/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_query_metadata__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/84a80008-82e7-491c-8b9f-9684d1fcc80a-api/scopes/cpp/sdk-15.04.5/unity.scopes.RangeInputFilter/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/84a80008-82e7-491c-8b9f-9684d1fcc80a-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.RangeInputFilter\/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_range_input_filter__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/eb588139-d958-496e-a1fc-cd6c9a9bdbfc-api/scopes/cpp/sdk-15.04.5/unity.scopes.RangeInputFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/eb588139-d958-496e-a1fc-cd6c9a9bdbfc-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.RangeInputFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/3ee4eb9b-b186-4bc5-a351-1e902c970a6c-api/scopes/cpp/sdk-15.04.5/unity.scopes.RangeInputFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3ee4eb9b-b186-4bc5-a351-1e902c970a6c-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.RangeInputFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_registry__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/951c4b57-d6e2-43ca-b704-f49a5fe39247-api/scopes/cpp/sdk-15.04.5/unity.scopes.Registry/classunity_1_1scopes_1_1_registry__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/951c4b57-d6e2-43ca-b704-f49a5fe39247-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Registry\/classunity_1_1scopes_1_1_registry__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_registry__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/fd8e90cf-243b-4bce-82de-a07c27ccf990-api/scopes/cpp/sdk-15.04.5/unity.scopes.Registry/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fd8e90cf-243b-4bce-82de-a07c27ccf990-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Registry\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/689663e9-f563-4abe-8269-ce604811858b-api/scopes/cpp/sdk-15.04.5/unity.scopes.Reply/classunity_1_1scopes_1_1_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/689663e9-f563-4abe-8269-ce604811858b-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Reply\/classunity_1_1scopes_1_1_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/f7892b9d-4e7b-48c5-a691-d5c9cb85f872-api/scopes/cpp/sdk-15.04.5/unity.scopes.Reply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f7892b9d-4e7b-48c5-a691-d5c9cb85f872-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Reply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/40c96b50-f2ad-4e85-ab36-97399c0e87d1-api/scopes/cpp/sdk-15.04.5/unity.scopes.Result/classunity_1_1scopes_1_1_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/40c96b50-f2ad-4e85-ab36-97399c0e87d1-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Result\/classunity_1_1scopes_1_1_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_scope__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/4ef64bda-9987-4c1a-a4e9-9264b0b030e3-api/scopes/cpp/sdk-15.04.5/unity.scopes.Scope/classunity_1_1scopes_1_1_scope__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4ef64bda-9987-4c1a-a4e9-9264b0b030e3-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Scope\/classunity_1_1scopes_1_1_scope__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_scope__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/5c277813-c685-4530-ba61-965545fefd48-api/scopes/cpp/sdk-15.04.5/unity.scopes.Scope/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5c277813-c685-4530-ba61-965545fefd48-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.Scope\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_scope_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/50e54091-1956-4ba3-a4ff-d6adedb43964-api/scopes/cpp/sdk-15.04.5/unity.scopes.ScopeBase/classunity_1_1scopes_1_1_scope_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/50e54091-1956-4ba3-a4ff-d6adedb43964-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ScopeBase\/classunity_1_1scopes_1_1_scope_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_scope_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/21935c2e-a46d-41d8-b94c-b1472664ce3f-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchListenerBase/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/21935c2e-a46d-41d8-b94c-b1472664ce3f-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchListenerBase\/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_search_listener_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/91ce68eb-e00b-4851-97f5-ba72041a571a-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchListenerBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/91ce68eb-e00b-4851-97f5-ba72041a571a-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchListenerBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/4b48c407-a62c-4667-9477-0cf2dbddc115-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchMetadata/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/4b48c407-a62c-4667-9477-0cf2dbddc115-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchMetadata\/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_search_metadata__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/56fb6e5c-dcc6-47f0-ac4b-cce0eb053b7e-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchMetadata/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/56fb6e5c-dcc6-47f0-ac4b-cce0eb053b7e-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchMetadata\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/01c15e3e-dc41-4a2c-832c-a726a80c523d-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchMetadata/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/01c15e3e-dc41-4a2c-832c-a726a80c523d-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchMetadata\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/9235ff9a-5459-4fc9-9346-06a6da95c7d9-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchQueryBase/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/9235ff9a-5459-4fc9-9346-06a6da95c7d9-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchQueryBase\/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_search_query_base__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/fc1f9cd3-4a64-4245-aac9-4fb5b34a0c1f-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchQueryBase/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/fc1f9cd3-4a64-4245-aac9-4fb5b34a0c1f-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchQueryBase\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_search_reply__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/db6718a3-0aee-44e6-a073-ddd869e161fb-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchReply/classunity_1_1scopes_1_1_search_reply__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/db6718a3-0aee-44e6-a073-ddd869e161fb-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchReply\/classunity_1_1scopes_1_1_search_reply__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_search_reply__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/731b5a7e-c0c1-480e-89f5-bdb8cd017b99-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchReply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/731b5a7e-c0c1-480e-89f5-bdb8cd017b99-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchReply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/44736bdd-f01e-4054-ab03-0966c440eeb7-api/scopes/cpp/sdk-15.04.5/unity.scopes.SearchReply/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/44736bdd-f01e-4054-ab03-0966c440eeb7-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.SearchReply\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/d09d1e7d-312a-40c9-9f07-cae92c778aa1-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Benchmark/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d09d1e7d-312a-40c9-9f07-cae92c778aa1-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.testing.Benchmark\/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_benchmark__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/f4e14277-7271-4f7e-9968-1a3be9e3fd72-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Category/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f4e14277-7271-4f7e-9968-1a3be9e3fd72-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.testing.Category\/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_category__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/2861cc6b-1de4-4a32-9561-1fcbb9e9a3ad-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Category/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2861cc6b-1de4-4a32-9561-1fcbb9e9a3ad-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.testing.Category\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/2852f971-8545-4c60-ba58-042f69fdd944-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.InProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2852f971-8545-4c60-ba58-042f69fdd944-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.testing.InProcessBenchmark\/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_in_process_benchmark__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/1bbef8e1-a933-4107-97bb-e416c64abddd-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.OutOfProcessBenchmark/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/1bbef8e1-a933-4107-97bb-e416c64abddd-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.testing.OutOfProcessBenchmark\/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_out_of_process_benchmark__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/d2200805-f550-40f1-b6db-4aa869180942-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Result/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/d2200805-f550-40f1-b6db-4aa869180942-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.testing.Result\/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_result__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/5c964ab1-29e9-414d-8816-2d97d24ffec8-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Result/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5c964ab1-29e9-414d-8816-2d97d24ffec8-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.testing.Result\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/5e20e564-0235-48ff-9a3f-17e13aa2ce51-api/scopes/cpp/sdk-15.04.5/unity.scopes.testing.Sample/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5e20e564-0235-48ff-9a3f-17e13aa2ce51-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.testing.Sample\/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1testing_1_1_sample__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/33b95100-2e21-4768-b335-4f002abd7ff1-api/scopes/cpp/sdk-15.04.5/unity.scopes.TimeoutException/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/33b95100-2e21-4768-b335-4f002abd7ff1-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.TimeoutException\/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_timeout_exception__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/923daafb-3617-4db8-8c33-dcab399396d8-api/scopes/cpp/sdk-15.04.5/unity.scopes.TimeoutException/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/923daafb-3617-4db8-8c33-dcab399396d8-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.TimeoutException\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/25d640d4-864d-45d2-bb0a-63fdebbf2cc9-api/scopes/cpp/sdk-15.04.5/unity.scopes.utility.BufferedResultForwarder/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/25d640d4-864d-45d2-bb0a-63fdebbf2cc9-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.utility.BufferedResultForwarder\/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1utility_1_1_buffered_result_forwarder__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/2e292d21-a391-4520-8aca-c764caa30109-api/scopes/cpp/sdk-15.04.5/unity.scopes.utility.BufferedResultForwarder/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/2e292d21-a391-4520-8aca-c764caa30109-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.utility.BufferedResultForwarder\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/3e93daed-cf0a-4ab8-8c7b-d8f0103b890d-api/scopes/cpp/sdk-15.04.5/unity.scopes.utility.BufferedResultForwarder/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/3e93daed-cf0a-4ab8-8c7b-d8f0103b890d-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.utility.BufferedResultForwarder\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png https://developer.ubuntu.com/static/devportal_uploaded/a8b1ddde-6939-4fda-954c-f6301b1c747c-api/scopes/cpp/sdk-15.04.5/unity.scopes.ValueSliderFilter/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/a8b1ddde-6939-4fda-954c-f6301b1c747c-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ValueSliderFilter\/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png/..\/..\/media\/classunity_1_1scopes_1_1_value_slider_filter__inherit__graph.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/f5e40d09-ed06-4de6-8cca-dbdf22134bd1-api/scopes/cpp/sdk-15.04.5/unity.scopes.ValueSliderFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/f5e40d09-ed06-4de6-8cca-dbdf22134bd1-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ValueSliderFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md


wget --output-document=/Users/peter/src/phone-docs/media/closed.png https://developer.ubuntu.com/static/devportal_uploaded/5e817689-7367-4714-a124-750ab192bf43-api/scopes/cpp/sdk-15.04.5/unity.scopes.ValueSliderFilter/closed.png
sed -i '' -e "s/https:\/\/developer.ubuntu.com\/static\/devportal_uploaded\/5e817689-7367-4714-a124-750ab192bf43-api\/scopes\/cpp\/sdk-15.04.5\/unity.scopes.ValueSliderFilter\/closed.png/..\/..\/media\/closed.png/g" */*/*/*.md

