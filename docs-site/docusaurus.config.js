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
          path: 'docs',
          routeBasePath: '/',
          sidebarPath: require.resolve('./sidebars.js'),
          exclude: ['../../README.md'], // 루트 README 제외
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],
};
