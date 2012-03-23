/***************************************************************************
 * Copyright (C) 2006 Global Biodiversity Information Facility Secretariat.
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
package org.gbif.portal.dto.occurrence;

import org.gbif.portal.dto.BaseDTOFactory;
import org.gbif.portal.model.occurrence.ImageRecord;

/**
 * BriefTaxonConceptDTOFactory
 * 
 * Factory to create BriefOccurrenceDTO objects.
 * 
 * @author dmartin
 */
public class ImageRecordDTOFactory extends BaseDTOFactory {
	
	/**
	 * @see org.gbif.portal.dto.DTOFactory#createDTO(org.gbif.portal.model.BaseObject)
	 */
	public Object createDTO(Object modelObject) {
		if(modelObject==null)
			return null;
		
		ImageRecord ir = null;
		if(modelObject instanceof ImageRecord){
			ir = (ImageRecord) modelObject;
		} else if(modelObject instanceof Object[]){
			Object[] objArray = (Object[]) modelObject;
			if(objArray!=null && objArray.length>0 && objArray[0] instanceof ImageRecord)
				ir = (ImageRecord) objArray[0];
			else
				return null;
		} else {
			return null;
		}
		ImageRecordDTO dto = new ImageRecordDTO();
		populateImageRecord(ir, dto);
		return dto;
	}
		
	/**
	 * Sets the values in a BriefOccurrenceRecordDTO
	 * @param source model Object
	 * @param target briefTaxonConceptDTO
	 */
	protected void populateImageRecord(ImageRecord source, ImageRecordDTO target){
		target.setKey(source.getId().toString());
		target.setDataResourceKey(source.getDataResourceId().toString());
		target.setDataResourceName(source.getDataResource().getName());
		if(allowLazyLoading && source.getDataResource()!=null){
			org.gbif.portal.model.resources.DataProvider dp = source.getDataResource().getDataProvider();
			target.setDataProviderKey(dp.getId().toString());
			target.setDataProviderName(dp.getName());
		}
		
		if(source.getOccurrenceRecordId()!=null) {
			target.setOccurrenceRecordKey(source.getOccurrenceRecordId().toString());
			target.setOccurrenceRecordCatalogueNumber(source.getOccurrenceRecord().getCatalogueNumber().getCode());
		}
		if(source.getTaxonConceptId()!=null)
			target.setTaxonConceptKey(source.getTaxonConceptId().toString());
		if(source.getImageType()!=null)
			target.setImageType(source.getImageType().getValue());
		target.setUrl(source.getUrl());
		target.setDescription(source.getDescription());
		target.setRights(source.getRights());
		target.setHtmlForDisplay(source.getHtmlForDisplay());
	}
}
