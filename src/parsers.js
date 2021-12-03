import yml from 'js-yaml';

export default (format, data) => {
  switch (format) {
    case 'json':
      return JSON.parse(data);
    case 'yml':
      return yml.load(data);
    default:
      throw new Error(`Формат не поддерживается: ${format}`);
  }
};
