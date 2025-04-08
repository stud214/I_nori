module.exports = {
  title: 'iNori App Docs',
  url: 'https://bnshyun.github.io',
  baseUrl: '/I_nori/',
  favicon: 'img/favicon.ico',
  organizationName: 'BnsHyun',
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
