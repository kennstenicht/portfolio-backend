User.destroy_all
Page.destroy_all
Project.destroy_all
CustomField.destroy_all

users = User.create([{ name: 'Christoph Wiedenmann', email: 'christoph@ag-prop.com', password: '12345678'}])

pages = Page.create([
  { title: 'Über mich', slug: 'about', content: '{"header": "Header", "footer": "Footer"}'},
  { title: 'Startseite', slug: 'home', content: '{"header": "Header", "footer": "Footer"}'},
  { title: 'Impressum', slug: 'imprint', content: '{"header": "Header", "footer": "Footer"}'}
])

pages[0].custom_fields.create(key: 'section_1', value: 'Section Content 1')
pages[0].custom_fields.create(key: 'section_2', value: 'Section Content 2')

projects = Project.create([
  { title: 'EELS', slug: 'eels', subtitle: 'Subtitle', meta_info: 'Meta Info', excerpt: 'Excerpt', visible: true, content: 'Content'},
  { title: 'Ad Hoc', slug: 'ad-hoc', subtitle: 'Subtitle', meta_info: 'Meta Info', excerpt: 'Excerpt', visible: true, content: 'Content'},
  { title: 'Disaster MGMT', slug: 'disaster-mgmt', subtitle: 'Subtitle', meta_info: 'Meta Info', excerpt: 'Excerpt', visible: true, content: 'Content'},
  { title: 'Binuu', slug: 'binuu', subtitle: 'Subtitle', meta_info: 'Meta Info', excerpt: 'Excerpt', visible: true, content: 'Content'},
  { title: 'FLUT:koerper', slug: 'flutkoerper', subtitle: 'Subtitle', meta_info: 'Meta Info', excerpt: 'Excerpt', visible: true, content: 'Content'}
])

projects[0].custom_fields.create(key: 'eels_section_1', value: 'EELS Section Content 1')
projects[0].custom_fields.create(key: 'eels_section_2', value: 'EELS Section Content 2')

#
# "{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[[\"strong\"],[\"a\",[\"href\",\"mailto:kontakt@ag-prop.com\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"Wir suchen eine*n UI / UX / Webdesigner*in und bieten die Möglichkeit mit einem unkonventionellen Team in einer entspannten Umgebung an interessanten Projekten zu arbeiten! Wir sind ein Kollektiv mit Sitz in Berlin. Unsere Mitglieder kommen aus den Bereichen Design, Strategie und Technologie. Neben klassischen Kundenprojekten arbeiten wir vor allem mit festen Partnern aus den Bereichen Mode, Technologie und Musik. \"]]],[1,\"p\",[[0,[],0,\"SCHÖN, aber was ist der Job?\"]]],[1,\"p\",[[0,[0],1,\"Zu deinen Aufgaben zählen die:\"]]],[3,\"ul\",[[[0,[],0,\"Konzeption, grafische Umsetzung und Begleitung der Programmierung von Websites, Landingpages und Apps\"]],[[0,[],0,\"Entwicklung, Gestaltung und Umsetzung von Interface-, Navigations- und Interaktionskonzepten\"]],[[0,[],0,\"Spezifikation eigener Ideen in Form von Text, Moodboards, Sitemaps, Wireframes und interaktive Prototypen\"]],[[0,[],0,\"Vorbereitung und Durchführung von Konzeptpräsentationen und Kundenmeetings/-workshops\"]],[[0,[],0,\"Erstellung von Werbemitteln (Banner, Teaser, Grafiken etc.) für die Kampagnen unserer Kunden und betreuten Künstler\"]]]],[1,\"p\",[[0,[0],1,\"Neben einem gewissen Sinn für Humor haben wir folgende Anforderungen:\"]]],[3,\"ul\",[[[0,[],0,\"Du besitzt ein abgeschlossenes Studium im Bereich Digital-, Grafik-, Kommunikationsdesign oder eine vergleichbare Ausbildung\"]],[[0,[],0,\"Du besitzt einschlägige Erfahrung in der Konzeption und dem Design von digitalen Anwendungen.\"]],[[0,[],0,\"Du hast ein ausgeprägtes ästhetisches Verständnis sowie einen sehr hohen Qualitätsanspruch, zeigst Kreativität in der Ideenfindung und Detailgenauigkeit in der Ausarbeitung\"]],[[0,[],0,\"Ganz wichtig: Du bist in der Lage Designentscheidungen zu verargumentieren\"]],[[0,[],0,\"Neben einem ausgeprägten gestalterisch-konzeptionellen Know-how besitzt du ein Gespür für digitale Trends und Entwicklungen\"]],[[0,[],0,\"Du besitzt eine Leidenschaft fürs Lernen und Experimentieren\"]],[[0,[],0,\"Du bist ein Teamplayer, der sich gemeinsam mit uns und unseren Projekten entwickeln will\"]]]],[1,\"p\",[[0,[],0,\"Interessiert? Wir freuen uns auf deine Bewerbung.\"]]],[1,\"p\",[[0,[0],1,\"Ansprechpartner: \"],[0,[],0,\"Lea Schröter | 030 — 612 993 82 | \"],[0,[1],1,\"kontakt@ag-prop.com\"]]]]}"
