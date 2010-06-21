/***************************************************************************
 * Copyright (C) 2005 Global Biodiversity Information Facility Secretariat.  
 * All Rights Reserved.
 *
 * The contents of this file are subject to the Mozilla Public
 * License Version 1.1 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of
 * the License at http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS
 * IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * rights and limitations under the License.
 ***************************************************************************/
package org.gbif.portal.dao.resources;

import java.util.List;

import org.gbif.portal.model.resources.PropertyStoreNamespace;

/**
 * DAO methods for the PropertyStoreNamespace entity.
 * 
 * @author dmartin
 */
public interface PropertyStoreNamespaceDAO {
	
	/**
	 * Returns the PropertyStoreNamespaces for the specified ResourceAccessPoint.
	 * 
	 * @param resourceAccessPointId The id of the ResourceAccessPoint
	 * @return The PropertyStoreNamespace objects.
	 */
	public List<PropertyStoreNamespace> getPropertyStoreNamespacesForResourceAccessPoint(long resourceAccessPointId);
}