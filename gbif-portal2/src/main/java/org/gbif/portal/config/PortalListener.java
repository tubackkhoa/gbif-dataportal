/*
 * Copyright 2011 Global Biodiversity Information Facility (GBIF)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.gbif.portal.config;

import org.gbif.portal.filter.RestfulFilter;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.servlet.GuiceServletContextListener;
import com.google.inject.servlet.ServletModule;
import com.opensymphony.sitemesh.webapp.SiteMeshFilter;
import com.opensymphony.module.sitemesh.freemarker.FreemarkerDecoratorServlet;
//import org.apache.struts2.sitemesh.FreemarkerDecoratorServlet;
import org.apache.struts2.dispatcher.ng.filter.StrutsExecuteFilter;
import com.google.inject.Singleton;
import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareFilter;
import com.google.inject.struts2.Struts2GuicePluginModule;

/**
 * Example application module.
 *
 */
public class PortalListener extends GuiceServletContextListener {

  public Injector getInjector() {
    return Guice.createInjector(new PortalModule(), new Struts2GuicePluginModule(), new ServletModule() {
      @Override
      protected void configureServlets() {
        // access struts2 action values in freemarker based sitemesh decorators
        //bind(FreemarkerDecoratorServlet.class).in(Singleton.class);
        //serve("*.ftl").with(FreemarkerDecoratorServlet.class);

        // url param filter
        bind(RestfulFilter.class).in(Singleton.class);
        filter("/*").through(RestfulFilter.class);

        // Struts 2 prepare
        bind(StrutsPrepareFilter.class).in(Singleton.class);
        filter("/*").through(StrutsPrepareFilter.class);

        // Sitemesh
        bind(SiteMeshFilter.class).in(Singleton.class);
        filter("/*").through(SiteMeshFilter.class);

        // Struts 2 execute
        bind(StrutsExecuteFilter.class).in(Singleton.class);
        filter("/*").through(StrutsExecuteFilter.class);
      }
    });
  }

}
