---
title: ''
summary: ''
date: 2026-05-25
type: landing

sections:
  - block: resume-biography-3
    id: about
    content:
      username: achubaty
      text: ''
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      name:
        size: md
      avatar:
        size: medium
        shape: circle

  - block: collection
    id: projects
    content:
      title: Projects
      filters:
        folders:
          - projects
    design:
      view: article-grid
      columns: 3

  - block: collection
    id: publications
    content:
      title: Recent Publications
      filters:
        folders:
          - publications
      count: 5
    design:
      view: citation

  - block: collection
    id: talks
    content:
      title: Recent & Upcoming Talks
      filters:
        folders:
          - talks
      count: 5
    design:
      view: date-title-summary

  - block: markdown
    id: software
    content:
      title: Software
      subtitle: ''
      text: |-
        ### Author

        - `fpCompare`: Reliable comparison of floating point numbers. [CRAN](https://cran.r-project.org/package=fpCompare); [GitHub](https://github.com/PredictiveEcology/fpCompare); [Website](http://fpcompare.predictiveecology.org)
        - `grainscape`: Efficient modelling of landscape connectivity, habitat, and protected area networks. [CRAN](https://cran.r-project.org/package=grainscape); [GitHub](https://github.com/achubaty/grainscape); [Website](https://achubaty.github.io/grainscape)
        - `LandR`: Landscape Ecosystem Modelling in R. [GitHub](https://github.com/PredictiveEcology/LandR); [Website](http://landr.predictiveecology.org/)
        - `LandWebUtils`: Additional utilities for LandWeb analyses. [GitHub](https://github.com/PredictiveEcology/LandWebUtils); [Website](http://landwebutils.predictiveecology.org/)
        - `map`: Defines a meta class of geographical objects, the 'map' class, and associated tools. [GitHub](https://github.com/PredictiveEcology/map); [Website](http://map.predictiveecology.org/)
        - `NetLogoR`: A Port of 'NetLogo' Functions and Language to R. [CRAN](https://cran.r-project.org/package=NetLogoR); [GitHub](https://github.com/PredictiveEcology/NetLogoR); [Website](http://netlogor.predictiveecology.org/)
        - `pemisc`: Miscellaneous utilities developed by the Predictive Ecology Lab Group. [GitHub](https://github.com/PredictiveEcology/pemisc); [Website](http://pemisc.predictiveecology.org/)
        - `quickPlot`: Develop and run spatially explicit discrete event simulation models. [CRAN](https://cran.r-project.org/package=quickPlot); [GitHub](https://github.com/PredictiveEcology/quickPlot); [Website](http://quickplot.predictiveecology.org/)
        - `reproducible`: Develop and run spatially explicit discrete event simulation models. [CRAN](https://cran.r-project.org/package=reproducible); [GitHub](https://github.com/PredictiveEcology/reproducible); [Website](http://reproducible.predictiveecology.org/)
        - `SpaDES`: Develop and run spatially explicit discrete event simulation models. [CRAN](https://cran.r-project.org/package=SpaDES); [GitHub](https://github.com/PredictiveEcology/SpaDES); [Website](http://spades.predictiveecology.org/)
        - `SpaDES.addins`: Tools and RStudio addins for 'SpaDES' and 'SpaDES' module development. [CRAN](https://cran.r-project.org/package=SpaDES.addins); [GitHub](https://github.com/PredictiveEcology/SpaDES.addins); [Website](http://spades-addins.predictiveecology.org/)
        - `SpaDES.core`: Core functionality for Spatial Discrete Event Simulation (SpaDES). [CRAN](https://cran.r-project.org/package=SpaDES.core); [GitHub](https://github.com/PredictiveEcology/SpaDES.core); [Website](http://spades-core.predictiveecology.org/)
        - `SpaDES.experiment`: Simulation experiments within the `SpaDES` ecosystem. [GitHub](https://github.com/PredictiveEcology/SpaDES.experiment/); [Website](https://spades-experiment.predictiveecology.org)
        - `SpaDES.shiny`: Utilities for building `shiny`-based apps for `SpaDES` simulations. [GitHub](https://github.com/PredictiveEcology/SpaDES.shiny); [Website](http://spades-shiny.predictiveecology.org/)
        - `SpaDES.tools`: Additional modelling tools for Spatial Discrete Event Simulation (SpaDES) module development. [CRAN](https://cran.r-project.org/package=SpaDES.tools); [GitHub](https://github.com/PredictiveEcology/SpaDES.tools); [Website](http://spades-tools.predictiveecology.org/)

        ### Contributor

        - `miniCRAN`: Create a mini version of CRAN containing only selected packages. [CRAN](https://cran.r-project.org/package=miniCRAN); [GitHub](https://github.com/RevolutionAnalytics/miniCRAN)
    design:
      columns: '1'

  - block: collection
    id: posts
    content:
      title: Recent Posts
      filters:
        folders:
          - posts
      count: 5
    design:
      view: date-title-summary

  - block: contact-info
    id: contact
    content:
      title: Contact
      connect_title: Contact
      username: achubaty
      email: achubaty@for-cast.ca
      phone: '+1.403.708.5790'
      social: []
    design:
      background:
        color:
          light: '#f8f9fa'
          dark: '#1d1f27'
---
