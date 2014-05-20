.class public Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field private cIr:Landroid/app/ProgressDialog;

.field private hdC:Landroid/widget/ImageView;

.field private hdx:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->cIr:Landroid/app/ProgressDialog;

    .line 43
    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdC:Landroid/widget/ImageView;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdx:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdx:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->e(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 6

    .prologue
    const v5, 0x7f070c8d

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const v0, 0x7f070c7a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->mn(I)V

    .line 70
    const v0, 0x7f0a0737

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdC:Landroid/widget/ImageView;

    .line 72
    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_to"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdx:I

    .line 73
    const v0, 0x7f0a079d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    iget v1, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdx:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 75
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f070c8f

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_0
    invoke-static {}, Lcom/tencent/mm/ad/b;->BS()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->aMc()V

    .line 98
    :goto_1
    new-instance v0, Lcom/tencent/mm/ui/qrcode/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/qrcode/q;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 108
    const v0, 0x7f020539

    new-instance v1, Lcom/tencent/mm/ui/qrcode/r;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/r;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)V

    invoke-virtual {p0, v3, v0, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 117
    const v0, 0x7f0a079e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 118
    new-instance v1, Lcom/tencent/mm/ui/qrcode/s;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/s;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void

    .line 76
    :cond_0
    iget v1, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdx:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 77
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f070c8e

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_1
    iget v1, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdx:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 79
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f070c91

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_2
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f070c90

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdC:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    const-string v0, "MicroMsg.ShowQRCodeStep1UI"

    const-string v1, "onSceneEnd: errType = %d errCode = %d errMsg = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->cIr:Landroid/app/ProgressDialog;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->aal()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, p1, p2, v1}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 237
    :cond_2
    const v0, 0x7f070c78

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->hdC:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/ad/b;->BS()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method final aMa()V
    .locals 4

    .prologue
    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 174
    const/4 v1, 0x0

    const v2, 0x7f070c7f

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 175
    const/4 v1, 0x1

    const v2, 0x7f070c81

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 177
    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lcom/tencent/mm/ui/qrcode/t;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/qrcode/t;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)V

    invoke-static {p0, v1, v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 192
    return-void
.end method

.method final aMb()V
    .locals 4

    .prologue
    .line 195
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x10401

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->c(Ljava/lang/Integer;)I

    invoke-static {v1}, Lcom/tencent/mm/ad/b;->gk(Ljava/lang/String;)[B

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->auS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mmqrcode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 201
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 202
    const v0, 0x7f0705e9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    invoke-static {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->d(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final aMc()V
    .locals 5

    .prologue
    .line 212
    new-instance v0, Lcom/tencent/mm/ad/a;

    invoke-direct {v0}, Lcom/tencent/mm/ad/a;-><init>()V

    .line 213
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 215
    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0709bb

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    const v2, 0x7f070c77

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/qrcode/u;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/qrcode/u;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;Lcom/tencent/mm/ad/a;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->cIr:Landroid/app/ProgressDialog;

    .line 221
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f0302a0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->FR()V

    .line 57
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 64
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 65
    return-void
.end method
