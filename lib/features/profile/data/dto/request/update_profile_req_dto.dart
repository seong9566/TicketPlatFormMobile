import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

/// 프로필 수정 요청 DTO
/// multipart/form-data로 전송
class UpdateProfileReqDto {
  final String? nickname;
  final String? bio;
  final XFile? profileImage;
  final bool removeProfileImage;

  const UpdateProfileReqDto({
    this.nickname,
    this.bio,
    this.profileImage,
    this.removeProfileImage = false,
  });

  /// multipart/form-data 전송용 FormData 생성
  Future<FormData> toFormData() async {
    final Map<String, dynamic> fields = {};

    if (nickname != null) {
      fields['nickname'] = nickname;
    }

    if (bio != null) {
      fields['bio'] = bio;
    }

    if (removeProfileImage) {
      fields['removeProfileImage'] = 'true';
    }

    if (profileImage != null && !removeProfileImage) {
      final bytes = await profileImage!.readAsBytes();
      fields['profileImage'] = MultipartFile.fromBytes(
        bytes,
        filename: profileImage!.name,
      );
    }

    return FormData.fromMap(fields);
  }
}
