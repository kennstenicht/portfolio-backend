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
                password: '1'
              }
            ])

# Pages
Page.destroy_all

Page.create([
              {
                title: 'Startseite',
                slug: 'home',
                position: 0,
                content: create_mobiledoc('test'),
                visible: true
              }, {
                title: 'Über mich',
                slug: 'about',
                position: 1,
                content: create_mobiledoc("christoph wiedenmann\nringbahnstraße 33"),
                visible: true
              }, {
                title: 'Impressum',
                slug: 'imprint',
                position: 2,
                content: create_mobiledoc('test'),
                visible: true
              }, {
                title: 'Datenschutz',
                slug: 'date-protection',
                position: 3,
                content: create_mobiledoc('test'),
                visible: true
              }
            ])

# Projects
Project.destroy_all

projects = Project.create([
                            {
                              title: 'EELS',
                              slug: 'eels',
                              subtitle: 'analog-digital-analog-digital-analog',
                              facts: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              content: create_mobiledoc('test'),
                              role: 'Konzeption und Umsetzung',
                              visible: true,
                              position: 0
                            },
                            {
                              title: 'Ad Hoc',
                              slug: 'ad-hoc',
                              subtitle: 'Verbindungssuche mit Turn-By-Turn Navigation im Öffentlichen Nahverkehr',
                              facts: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              content: create_mobiledoc('test'),
                              role: 'Konzeption und Design',
                              visible: true,
                              position: 1
                            },
                            {
                              title: 'Disaster MGMT',
                              slug: 'disaster-mgmt',
                              subtitle: 'Subtitle',
                              facts: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              content: create_mobiledoc('test'),
                              role: 'Konzeption, Design und Entwicklung',
                              visible: true,
                              position: 2
                            },
                            {
                              title: 'Binuu',
                              slug: 'binuu',
                              subtitle: 'Laut, grell, GROSS - kickt Einheitsbrei!',
                              facts: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              content: create_mobiledoc('test'),
                              role: 'Entwicklung',
                              visible: true,
                              position: 3
                            },
                            {
                              title: 'FLUT:koerper',
                              slug: 'flutkoerper',
                              subtitle: 'Subtitle',
                              facts: create_mobiledoc('test'),
                              excerpt: create_mobiledoc('test'),
                              content: create_mobiledoc('test'),
                              visible: true,
                              position: 4
                            }
                          ])

# Custom Fields
CustomField.destroy_all

projects[0].custom_fields
           .create(key: 'eels_section_1', value: 'EELS Section Content 1')
projects[0].custom_fields
           .create(key: 'eels_section_2', value: 'EELS Section Content 2')
