.class public abstract Lcom/tencent/mm/ui/chatting/ce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final dws:I

.field public gJU:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/tencent/mm/ui/chatting/ce;->dws:I

    .line 54
    return-void
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/bv;->dy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    :cond_0
    return-object v0
.end method

.method protected static a(ILcom/tencent/mm/ui/chatting/cf;Lcom/tencent/mm/storage/ak;Ljava/lang/String;ZLcom/tencent/mm/ui/chatting/ez;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f020570

    const/4 v6, 0x0

    const/4 v7, -0x1

    .line 293
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 294
    iget-object v9, p1, Lcom/tencent/mm/ui/chatting/cf;->gKj:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    const/4 v5, 0x5

    move-object v1, p2

    move v2, p4

    move v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/cf;->gKj:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "MicroMsg.ChattingItem"

    const-string v1, "getMsgStateResId: not found this state"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 298
    :goto_0
    if-eq v0, v7, :cond_1

    .line 299
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/cf;->gKj:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/cf;->gKj:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    :cond_0
    :goto_1
    return-void

    :pswitch_0
    move v0, v7

    .line 297
    goto :goto_0

    :pswitch_1
    move v0, v8

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p1, Lcom/tencent/mm/ui/chatting/cf;->gKj:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/storage/y;Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/y;->bM(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    if-nez v0, :cond_0

    .line 402
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/storage/u;->uk(Ljava/lang/String;)Lcom/tencent/mm/storage/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/u;->aAU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/pluginsdk/i;->g(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 404
    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-nez v0, :cond_0

    .line 97
    :cond_0
    return-void
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/j/b;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p3, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->qm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 172
    :goto_1
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/bb;

    invoke-direct {v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bb;-><init>()V

    .line 173
    iget-object v2, p3, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/mm/pluginsdk/ui/chat/bb;->appId:Ljava/lang/String;

    .line 174
    const-string v2, "message"

    iput-object v2, v1, Lcom/tencent/mm/pluginsdk/ui/chat/bb;->chI:Ljava/lang/String;

    .line 175
    iput-object p4, v1, Lcom/tencent/mm/pluginsdk/ui/chat/bb;->pkgName:Ljava/lang/String;

    .line 176
    invoke-static {p0, p2}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/pluginsdk/ui/chat/bb;->bPT:Ljava/lang/String;

    .line 177
    iget v2, p3, Lcom/tencent/mm/j/b;->type:I

    iput v2, v1, Lcom/tencent/mm/pluginsdk/ui/chat/bb;->fra:I

    .line 178
    iput v0, v1, Lcom/tencent/mm/pluginsdk/ui/chat/bb;->bLN:I

    .line 179
    iget-object v0, p3, Lcom/tencent/mm/j/b;->mediaTagName:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/pluginsdk/ui/chat/bb;->frb:Ljava/lang/String;

    .line 181
    invoke-static {p0, p1, v1}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gNC:Lcom/tencent/mm/pluginsdk/ui/chat/az;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-void
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-static {p2}, Lcom/tencent/mm/pluginsdk/model/app/l;->qm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/bc;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bc;-><init>()V

    .line 157
    iput-object p2, v0, Lcom/tencent/mm/pluginsdk/ui/chat/bc;->appId:Ljava/lang/String;

    .line 158
    const-string v1, "message"

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/ui/chat/bc;->chI:Ljava/lang/String;

    .line 160
    invoke-static {p0, p1, v0}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/TextView;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 201
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 203
    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 204
    invoke-virtual {p1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 205
    return-void
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    const/4 v0, 0x2

    invoke-static {p0}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/l;->b(Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-static {p0, p1, v0}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/TextView;Landroid/graphics/Bitmap;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205a3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/TextView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/j/b;Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    .line 355
    :goto_0
    invoke-static {p0, p2}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v2

    .line 356
    iget-object v1, p1, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    iget v3, p1, Lcom/tencent/mm/j/b;->type:I

    iget-object v5, p1, Lcom/tencent/mm/j/b;->mediaTagName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v6

    int-to-long v6, v6

    invoke-interface/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/ag;->a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V

    .line 358
    :cond_0
    return-void

    .line 354
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/j/b;Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/pluginsdk/model/app/k;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-eqz v1, :cond_1

    const/4 v7, 0x2

    .line 345
    :goto_0
    invoke-static {p0, p2}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Ljava/lang/String;

    move-result-object v4

    .line 346
    iget-object v2, p1, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    if-nez p3, :cond_2

    const/4 v3, 0x0

    :goto_1
    iget v5, p1, Lcom/tencent/mm/j/b;->type:I

    iget-object v6, p1, Lcom/tencent/mm/j/b;->mediaTagName:Ljava/lang/String;

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/tencent/mm/pluginsdk/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 349
    :cond_0
    return-void

    .line 344
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 346
    :cond_2
    iget-object v3, p3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/j/b;Ljava/lang/String;Lcom/tencent/mm/pluginsdk/model/app/k;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 330
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 332
    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-eqz v1, :cond_1

    move v6, v2

    .line 333
    :goto_0
    if-eqz p3, :cond_2

    iget-object v1, p3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/pluginsdk/model/app/u;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 334
    :goto_1
    iget v3, p1, Lcom/tencent/mm/j/b;->type:I

    if-ne v3, v2, :cond_4

    .line 335
    const/4 v7, 0x4

    .line 337
    :goto_2
    iget-object v2, p1, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    if-nez p3, :cond_3

    const/4 v3, 0x0

    :goto_3
    iget v5, p1, Lcom/tencent/mm/j/b;->type:I

    iget-object v8, p1, Lcom/tencent/mm/j/b;->mediaTagName:Ljava/lang/String;

    move-object v1, p0

    move-object v4, p2

    invoke-interface/range {v0 .. v8}, Lcom/tencent/mm/pluginsdk/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 339
    :cond_0
    return-void

    .line 332
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 333
    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    .line 337
    :cond_3
    iget-object v3, p3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move v7, v1

    goto :goto_2
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 220
    :cond_1
    const-string v0, "MicroMsg.ChattingItem"

    const-string v1, "url, lowUrl both are empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 224
    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/ba;->bo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 240
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 242
    const-string v1, "rawUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "version_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v1, "version_code"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const-string v1, "usePlugin"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const-string v1, "geta8key_username"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 233
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_5
    move-object p1, p2

    .line 234
    goto :goto_1
.end method

.method protected static a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/pluginsdk/model/app/k;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 361
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apq()Lcom/tencent/mm/pluginsdk/ag;

    move-result-object v3

    .line 362
    iget-object v4, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    const-string v5, "wxab9305c2bdfa88bd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 363
    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Lcom/tencent/mm/pluginsdk/ag;->b(Lcom/tencent/mm/pluginsdk/model/app/k;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    invoke-interface {v3, p0, p1}, Lcom/tencent/mm/pluginsdk/ag;->a(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/model/app/k;)V

    .line 386
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 367
    goto :goto_0

    .line 369
    :cond_2
    invoke-static {p0, p1}, Lcom/tencent/mm/pluginsdk/model/app/l;->b(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/model/app/k;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    .line 370
    iget-object v4, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->bSI:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 371
    iget-object v4, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->bSI:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/tencent/mm/pluginsdk/model/app/u;->ag(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 372
    const-string v5, "MicroMsg.ChattingItem"

    const-string v6, "oversea game info and gpdownload url is not empty, jump to google play directy:[%s], jump result: [%b]"

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->bSI:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v5, v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    if-nez v4, :cond_0

    .line 377
    :cond_3
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-eqz v2, :cond_4

    .line 378
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 379
    const-string v4, "game_app_id"

    iget-object v5, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v4, "game_report_from_scene"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v4, "game"

    const-string v5, ".ui.GameDetailInfoUI"

    invoke-static {p0, v4, v5, v2}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 382
    iget-object v2, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appId:Ljava/lang/String;

    invoke-interface {v3, v2, v0, v0}, Lcom/tencent/mm/pluginsdk/ag;->q(Ljava/lang/String;II)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 377
    goto :goto_1

    :cond_5
    move v1, v2

    .line 386
    goto :goto_0
.end method

.method protected static ad(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-static {p1}, Lcom/tencent/mm/ui/chatting/ce;->qb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    if-nez v1, :cond_0

    .line 287
    :goto_0
    return-object v0

    .line 285
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static ao(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 265
    invoke-static {p1}, Lcom/tencent/mm/ui/chatting/ce;->qb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/tencent/mm/pluginsdk/model/app/u;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 266
    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    invoke-static {p1, v0}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v2

    .line 271
    if-eqz v2, :cond_0

    .line 275
    iget v3, v2, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    if-eq v3, v1, :cond_2

    iget v3, v2, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    if-eqz v3, :cond_2

    iget v2, v2, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method protected static b(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void
.end method

.method protected static c(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->gNG:Lcom/tencent/mm/ui/chatting/n;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method private static qb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 256
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v1

    .line 257
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract a(Lcom/tencent/mm/ui/chatting/cf;ILcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
.end method

.method public abstract a(Landroid/view/ContextMenu;Landroid/view/View;Lcom/tencent/mm/storage/ak;)Z
.end method

.method public abstract a(Landroid/view/MenuItem;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
.end method

.method public abstract a(Landroid/view/View;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)Z
.end method

.method public final aJh()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ce;->dws:I

    return v0
.end method
