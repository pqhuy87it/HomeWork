//
//  Manga.m
//  SuperManga
//
//  Created by Pham Quang Huy on 11/10/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import "Manga.h"

@implementation Manga
+(Manga*)newMangawithName:(NSString*)name addAuthur:(NSString*)authurManga addDescription:(description)descriptionManga addImage:(ImageManga)image
{
    Manga *manga = [[Manga alloc]init];
    manga.nameManga = name;
    manga.descriptionManga =descriptionManga;
    manga.authurManga = authurManga;
    manga.image = image;
    return manga;
}

-(NSString*)MangaDescription{
    switch (self.descriptionManga) {
        case Naruto:
            return @"Mười hai năm trước khi câu chuyện chính thức bắt đầu, một con hồ ly chín đuôi đã tấn công Konohagakure. Nó là một con quái vật có sức mạnh khủng khiếp, chỉ một cái vẫy từ một trong chín cái đuôi của nó có thể tạo ra những cơn sóng thần và san bằng nhiều ngọn núi. Nó gây ra sự hỗn loạn và giết chết rất nhiều người cho đến khi người đứng đầu làng Lá - Hokage đệ tứ - đã đánh bại nó bằng cách đổi lấy mạng sống của mình để phong ấn nó vào trong người một đứa trẻ mới sinh. Đứa trẻ đó tên là Uzumaki Naruto.";
            break;
        case HunterX:
            return @"Một thế giới giả tưởng với các Hunter săn lùng mọi cảm giác. Gon, nhân vật chính của truyện, sau khi biết cha mình vẫn còn sống và là một hunter tài năng, đã quyết tâm trở thành một hunter. Trong cuộc thi tuyển chọn hunter, Gon đã gặp và kết bạn với Killua, Kurapika và Leorio. Cả bốn người họ bắt đầu bước vào cuộc phiêu lưu trong thế giới hunters... Câu truyện lôi cuốn người đọc bởi những nhân vật ấn tượng cùng trí tưởng tượng tuyệt vời của Togashi-sensei.";
        case Phong_Van:
            return @"Hùng Bá sai thủ hạ của mình đến sát hại gia đình Hoắc Bộ Thiên. Cả nhà họ Hoắc chết thảm, duy có đưá con nuôi là Hoắc Kinh Giác thoát chết nhờ 'Thiên Kiếm' Vô Danh cứu gúp. Vì muốn học võ công báo thù, Kinh Giác xin làm đệ tử Vô Danh. Thiên Kiếm thấy oán khí từ người Kinh Giác quá mạnh, nên không thu nhận. Kinh Giác quyết định đến hang ổ kẻ thù - Thiên Hạ Hội - để học võ công của Hùng Bá, hi vọng một ngày có thể giết Hùng Bá bàng chính võ công của hắn. Nhìn lên mây bay trên trời, Kinh Giác lấy tên mới của mình là Bộ Kinh Vân(bước qua mây). Để rồi nhiều năm sau cậu ta trở thành 'Bất Khốc tử thần', danh chấn võ lâm.";
        case Gintama:
            return @"Câu chuyện xoay xung quanh cuộc sống hằng ngày của 3 nhân vật chính, Sakata Gintoki, một Samurai hết thời, bị bệnh tiểu đường nặng, Shinpachi Shimura, kẻ kế thừa của một võ đường xập xệ do chẳng còn ai đến luyện võ trong thời đại này và Kagura, một Amanto với sức mạnh phi thường, tham ăn trong thân hình nhỏ bé của 1 cô bé 14 tuổi. Cả 3 phải làm đủ mọi việc (hầu hết là phá hoại chứ chẳng làm gì nghiêm túc) để trả tiền nhà hằng tháng.";
        case Hiep_khach_giang_ho:
            return @"Câu chuyện xoay quanh Hàn Phi Quang, một kẻ không biết võ công nhưng lại có khinh công tuyệt đỉnh và khả năng thiên bẩm bắt chước võ công của người khác. Cùng với Đàm Hoa Liên, cháu gái của Kiếm Vương, họ bị cuốn vào những trận mưa máu của võ lâm ... những bí mật về một thế lực âm mưu thôn tính võ lâm dần được hé lộ.";
        case Hitman:
            return @"Một thế giới giả tưởng với các Hunter săn lùng mọi cảm giác. Gon, nhân vật chính của truyện, sau khi biết cha mình vẫn còn sống và là một hunter tài năng, đã quyết tâm trở thành một hunter. Trong cuộc thi tuyển chọn hunter, Gon đã gặp và kết bạn với Killua, Kurapika và Leorio. Cả bốn người họ bắt đầu bước vào cuộc phiêu lưu trong thế giới hunters... Câu truyện lôi cuốn người đọc bởi những nhân vật ấn tượng cùng trí tưởng tượng tuyệt vời của Togashi-sensei.";
        case onepiece:
            return @"Một thế giới giả tưởng với các Hunter săn lùng mọi cảm giác. Gon, nhân vật chính của truyện, sau khi biết cha mình vẫn còn sống và là một hunter tài năng, đã quyết tâm trở thành một hunter. Trong cuộc thi tuyển chọn hunter, Gon đã gặp và kết bạn với Killua, Kurapika và Leorio. Cả bốn người họ bắt đầu bước vào cuộc phiêu lưu trong thế giới hunters... Câu truyện lôi cuốn người đọc bởi những nhân vật ấn tượng cùng trí tưởng tượng tuyệt vời của Togashi-sensei.";
        case hoangtu:
            return @"Một thế giới giả tưởng với các Hunter săn lùng mọi cảm giác. Gon, nhân vật chính của truyện, sau khi biết cha mình vẫn còn sống và là một hunter tài năng, đã quyết tâm trở thành một hunter. Trong cuộc thi tuyển chọn hunter, Gon đã gặp và kết bạn với Killua, Kurapika và Leorio. Cả bốn người họ bắt đầu bước vào cuộc phiêu lưu trong thế giới hunters... Câu truyện lôi cuốn người đọc bởi những nhân vật ấn tượng cùng trí tưởng tượng tuyệt vời của Togashi-sensei.";
        default:
            return Nil;
            break;
    }
}
-(UIImage*)MangaImage{
    switch (self.image) {
        case NarutorImage:
            return [UIImage imageNamed:@"Naruto.jpg"];
            break;
        case HunterXImage:
            return [UIImage imageNamed:@"HunterX.jpg"];
            break;
        case Phong_VanI:
            return [UIImage imageNamed:@"phongvan.jpg"];
            break;
        case GintamaI:
            return [UIImage imageNamed:@"Gintama.jpg"];
            break;
        case Hiep_khach_giang_hoI:
            return [UIImage imageNamed:@"hiepkhachgianghojpg.jpg"];
            break;
        case HitmanI:
            return [UIImage imageNamed:@"Kateikyoushi Hitman Reborn.jpg"];
            break;
        case onepieceI:
            return [UIImage imageNamed:@"One Piece.jpg"];
            break;
        case hoangtuI:
            return [UIImage imageNamed:@"8806924734b.jpg"];
            break;
        default:
            return Nil;
            break;
    }
}
@end
