# frozen_string_literal: true

# Helper
def create_mobiledoc(content)
  sections = []

  content.each_line { |line| sections.push([1, 'p', [[0, [], 0, line.to_s]]]) }

  {
    "version": '0.3.1',
    "atoms": [],
    "cards": [],
    "markups": [],
    "sections": sections
  }
end

# User
User.destroy_all

User.create([
              {
                name: 'Christoph Wiedenmann',
                email: 'christoph@ag-prop.com',
                password: '12345678'
              }
            ])

# Pages
Page.destroy_all

Page.create([
              {
                title: 'Startseite',
                slug: 'home',
                position: 0,
                content: create_mobiledoc('test')
              }, {
                title: 'Über mich',
                slug: 'about',
                position: 1,
                content: create_mobiledoc("christoph wiedenmann\nringbahnstraße 33")
              }, {
                title: 'Impressum',
                slug: 'imprint',
                position: 2,
                content: create_mobiledoc('test')
              }, {
                title: 'Datenschutz',
                slug: 'date-protection',
                position: 3,
                content: create_mobiledoc('test')
              }
            ])

# Projects
Project.destroy_all

projects = Project.create([
                            {
                              title: 'EELS',
                              slug: 'eels',
                              subtitle: 'analog-digital-analog-digital-analog',
                              meta_info: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              visible: true,
                              content: create_mobiledoc('test'),
                              position: 0
                            },
                            {
                              title: 'Ad Hoc',
                              slug: 'ad-hoc',
                              subtitle: 'Verbindungssuche mit Turn-By-Turn Navigation im Öffentlichen Nahverkehr',
                              meta_info: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              visible: true,
                              content: create_mobiledoc('test'),
                              position: 1
                            },
                            {
                              title: 'Disaster MGMT',
                              slug: 'disaster-mgmt',
                              subtitle: 'Subtitle',
                              meta_info: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              visible: true,
                              content: create_mobiledoc('test'),
                              position: 2
                            },
                            {
                              title: 'Binuu',
                              slug: 'binuu',
                              subtitle: 'Laut, grell, GROSS - kickt Einheitsbrei!',
                              meta_info: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              visible: true,
                              content: create_mobiledoc('test'),
                              position: 3
                            },
                            {
                              title: 'FLUT:koerper',
                              slug: 'flutkoerper',
                              subtitle: 'Subtitle',
                              meta_info: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              visible: true,
                              content: create_mobiledoc('test'),
                              position: 4
                            }
                          ])

# Custom Fields
CustomField.destroy_all

projects[0].custom_fields
           .create(key: 'eels_section_1', value: 'EELS Section Content 1')
projects[0].custom_fields
           .create(key: 'eels_section_2', value: 'EELS Section Content 2')
