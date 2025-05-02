module.exports = {
  tutorialSidebar: [
    'intro',
    {
      type: 'category',
      label: '기능 정의서',
      items: [
              'features/childlist',
              'features/playlist',
              'features/challenge',
              'features/invite-user'
              ],
    },
    {
      type: 'category',
      label: 'API 명세',
      items: ['api/v1'],
    },
  ],
};
