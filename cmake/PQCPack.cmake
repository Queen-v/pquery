INCLUDE(InstallRequiredSystemLibraries)

SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "PQuery is an open-source multi-threaded test program to stress test the MySQL server")
SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/COPYING")
SET(CPACK_PACKAGE_NAME pquery-${PQUERY_EXT})
SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "Alexey Bychko")
SET(CPACK_PACKAGE_CONTACT "alexey.bychko@percona.com")
SET(CPACK_PACKAGE_VENDOR "Percona")
SET(CPACK_PACKAGE_VERSION_MAJOR 2)
SET(CPACK_PACKAGE_VERSION_MINOR 0)
SET(CPACK_PACKAGE_VERSION_PATCH 1)
SET(CPACK_PACKAGE_VERSION_RELEASE 1)
SET(CPACK_PACKAGE_FILE_NAME 
  "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}-${CPACK_PACKAGE_VERSION_RELEASE}.${CMAKE_SYSTEM_NAME}.${ARCH}")
SET(CPACK_PACKAGING_INSTALL_PREFIX "/usr")
SET(CPACK_SOURCE_STRIP_FILES ON)
#
IF(UNIX)
  SET(CPACK_GENERATOR "TGZ;STGZ")
  IF(EXISTS "/usr/bin/dpkg")
    SET(CPACK_GENERATOR "${CPACK_GENERATOR};DEB")
  ENDIF()
  IF(EXISTS "/usr/bin/rpmbuild")
    SET(CPACK_GENERATOR "${CPACK_GENERATOR};RPM")
  ENDIF()
ENDIF(UNIX)
#


INCLUDE(CPack)

