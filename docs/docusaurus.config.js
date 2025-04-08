module.exports = {
  title: 'iNori App Docs',
  url: 'https://stud214.github.io',
  baseUrl: '/I_nori/',
  favicon: 'img/favicon.ico',
  organizationName: 'bnsHyun',
  projectName: 'I_nori',
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          sidebarPath: require.resolve('./sidebars.js'),
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],
};
