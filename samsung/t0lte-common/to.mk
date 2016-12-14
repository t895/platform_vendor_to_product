# t0lte over-ride

#Device overlay
DEVICE_PACKAGE_OVERLAYS += vendor/to/product/samsung/t0lte-common/overlay

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.config=mtp,adb \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.debuggabl=1
