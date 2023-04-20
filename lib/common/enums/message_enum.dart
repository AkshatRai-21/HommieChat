enum MessageEnum {
  text('text'),
  image('image'),
  audio('audio'),
  video('video'),
  gif('gif');

  const MessageEnum(this.type);
  final String type;
}

//Using an extension
//Enhanced enums

extension ConvertMessage on String {
  MessageEnum toEnum() {
    //(this) will give us the string value on which this extension
    //was used
    switch (this) {
      case 'audio':
        return MessageEnum.audio;
      case 'image':
        return MessageEnum.image;
      case 'text':
        return MessageEnum.text;
      case 'gif':
        return MessageEnum.gif;
      case 'video':
        return MessageEnum.video;

      default:
        return MessageEnum.text;
    }
  }
}
