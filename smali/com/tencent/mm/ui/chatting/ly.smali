.class final Lcom/tencent/mm/ui/chatting/ly;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field cMV:Landroid/widget/TextView;

.field gKd:Landroid/widget/ImageView;

.field gKg:Landroid/widget/TextView;

.field gRD:Landroid/widget/TextView;

.field gRE:Landroid/widget/ImageView;

.field gRF:Landroid/widget/ImageView;

.field gRG:Landroid/widget/ImageView;

.field gRH:Landroid/widget/ProgressBar;

.field gRI:Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 190
    return-void
.end method

.method public static a(Lcom/tencent/mm/ui/chatting/ly;Lcom/tencent/mm/storage/ak;ZILcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xc6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 215
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->hh(Ljava/lang/String;)Lcom/tencent/mm/ai/q;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/tencent/mm/ai/q;

    invoke-direct {v0}, Lcom/tencent/mm/ai/q;-><init>()V

    .line 219
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v2

    invoke-static {p4}, Lcom/tencent/mm/an/a;->getDensity(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v1, v3, p4}, Lcom/tencent/mm/w/g;->a(Ljava/lang/String;FLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 221
    if-nez v1, :cond_3

    .line 222
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->isSDCardAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->gKd:Landroid/widget/ImageView;

    const v2, 0x7f020835

    invoke-static {p4, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->gMy:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    if-eqz p2, :cond_a

    .line 239
    iget-boolean v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DG()Ljava/lang/String;

    move-result-object v1

    .line 240
    :goto_1
    invoke-static {p4}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 241
    iget-boolean v2, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v2, :cond_1

    .line 242
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gMy:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gMy:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :cond_1
    invoke-static {v1}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->cMV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Lcom/tencent/mm/platformtools/au;->K(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gRD:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->eQ(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v2

    .line 256
    const/16 v3, 0xc7

    if-ne v2, v3, :cond_6

    .line 257
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ly;->gRE:Landroid/widget/ImageView;

    const v7, 0x7f020839

    invoke-static {p4, v7}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ly;->cMV:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :goto_3
    const/16 v3, 0x70

    if-ne v2, v3, :cond_7

    .line 265
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-static {v0}, Lcom/tencent/mm/ai/v;->e(Lcom/tencent/mm/ai/q;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 270
    const-string v0, "MicroMsg.VideoItemHoder"

    const-string v2, "status begin"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 283
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v2, v1}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 325
    :goto_5
    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    const/4 v5, 0x3

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ly;->gki:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    const/4 v5, 0x2

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gki:Landroid/view/View;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gki:Landroid/view/View;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 332
    return-void

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->gKd:Landroid/widget/ImageView;

    const v2, 0x7f0201c5

    invoke-static {p4, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 228
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gKd:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 239
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getUser()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 250
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    invoke-static {v2, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 260
    :cond_6
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ly;->gRE:Landroid/widget/ImageView;

    const v7, 0x7f02082e

    invoke-static {p4, v7}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ly;->cMV:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 272
    :cond_7
    const/16 v0, 0x71

    if-eq v2, v0, :cond_8

    if-ne v2, v10, :cond_9

    .line 273
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    const-string v0, "MicroMsg.VideoItemHoder"

    const-string v2, "status pause"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 278
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 281
    const-string v0, "MicroMsg.VideoItemHoder"

    const-string v2, "status gone"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 292
    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->cMV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/au;->K(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->gRD:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DO()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->eQ(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->getStatus()I

    move-result v1

    .line 295
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ly;->gRE:Landroid/widget/ImageView;

    const v3, 0x7f020839

    invoke-static {p4, v3}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    const/16 v2, 0x68

    if-eq v1, v2, :cond_b

    const/16 v2, 0x67

    if-ne v1, v2, :cond_d

    .line 298
    :cond_b
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v2

    if-nez v2, :cond_c

    move v0, v6

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 302
    const-string v0, "MicroMsg.VideoItemHoder"

    const-string v1, "status begin"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :goto_7
    iget-object v0, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    invoke-static {p4}, Lcom/tencent/mm/ui/chatting/ce;->a(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 315
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/kk;

    iget-object v2, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->cMS:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 301
    :cond_c
    const-string v2, "MicroMsg.VideoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "cdntra getUploadProgress :"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DH()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->DH()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v0

    div-int v0, v2, v0

    goto :goto_6

    .line 303
    :cond_d
    const/16 v0, 0x69

    if-eq v1, v0, :cond_e

    if-ne v1, v10, :cond_f

    .line 304
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 307
    const-string v0, "MicroMsg.VideoItemHoder"

    const-string v1, "status pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 309
    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 312
    const-string v0, "MicroMsg.VideoItemHoder"

    const-string v1, "status gone"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public final c(Landroid/view/View;Z)Lcom/tencent/mm/ui/chatting/cf;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 194
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->dkq:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0a01f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gKd:Landroid/widget/ImageView;

    .line 197
    const v0, 0x7f0a008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gMy:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0a020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->cMV:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f0a020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRD:Landroid/widget/TextView;

    .line 200
    const v0, 0x7f0a020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRE:Landroid/widget/ImageView;

    .line 201
    const v0, 0x7f0a020f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRF:Landroid/widget/ImageView;

    .line 202
    const v0, 0x7f0a020e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRG:Landroid/widget/ImageView;

    .line 203
    const v0, 0x7f0a020d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRH:Landroid/widget/ProgressBar;

    .line 204
    const v0, 0x7f0a0209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gRI:Landroid/view/View;

    .line 205
    const v0, 0x7f0a01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gki:Landroid/view/View;

    .line 206
    if-eqz p2, :cond_0

    const/16 v0, 0xa

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/chatting/ly;->type:I

    .line 207
    const v0, 0x7f0a01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->gKg:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->daW:Landroid/widget/CheckBox;

    .line 209
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ly;->eyN:Landroid/view/View;

    .line 211
    return-object p0

    .line 206
    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method
