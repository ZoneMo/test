.class final Lcom/tencent/mm/ui/chatting/mb;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field gMU:Landroid/widget/TextView;

.field gRQ:Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gRQ:Landroid/view/View;

    .line 256
    return-void
.end method

.method public static a(Lcom/tencent/mm/ui/chatting/mb;Lcom/tencent/mm/storage/ak;ZILcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 279
    if-nez p0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    if-eqz p2, :cond_4

    .line 285
    iget-object v0, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->bNl:Ljava/lang/String;

    .line 289
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/mb;->cMS:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/mb;->cMS:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/mb;->gKj:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 292
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/mb;->gKj:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/mb;->cMS:Landroid/widget/ImageView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/kk;

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 295
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->cMS:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->cMS:Landroid/widget/ImageView;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 298
    iget-object v8, p0, Lcom/tencent/mm/ui/chatting/mb;->gki:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/chatting/kk;

    iget-boolean v2, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    const/4 v4, 0x0

    move-object v1, p1

    move v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/kk;-><init>(Lcom/tencent/mm/storage/ak;ZILjava/lang/String;IC)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gki:Landroid/view/View;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNw:Lcom/tencent/mm/ui/chatting/ez;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gki:Landroid/view/View;

    iget-object v1, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/es;->gNy:Lcom/tencent/mm/ui/chatting/fl;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 302
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCn()Ljava/lang/String;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 304
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/mb;->gMU:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070e4e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gRQ:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/storage/ak;->ghH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v2, v1, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v7, v2, Lcom/tencent/mm/c/a/ib;->bNk:I

    iget-object v2, v1, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput-object v0, v2, Lcom/tencent/mm/c/a/ib;->content:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v1, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    iget v0, v0, Lcom/tencent/mm/c/a/ic;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    move v0, v7

    :goto_4
    if-eqz v0, :cond_9

    .line 313
    :cond_3
    if-eqz p2, :cond_8

    .line 314
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gRQ:Landroid/view/View;

    const v1, 0x7f020899

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 287
    :cond_4
    iget-object v0, p4, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/es;->clp:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    move v1, v5

    .line 292
    goto/16 :goto_2

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gMU:Landroid/widget/TextView;

    invoke-virtual {p4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070e4d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    move v0, v5

    .line 312
    goto :goto_4

    .line 316
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gRQ:Landroid/view/View;

    const v1, 0x7f02089a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 318
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/storage/ak;->ghI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/c/a/ia;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/ia;-><init>()V

    iget-object v2, v1, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput v7, v2, Lcom/tencent/mm/c/a/ib;->bNk:I

    iget-object v2, v1, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    iput-object v0, v2, Lcom/tencent/mm/c/a/ib;->content:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v1, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    iget v0, v0, Lcom/tencent/mm/c/a/ic;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    move v5, v7

    :cond_a
    if-eqz v5, :cond_0

    .line 319
    :cond_b
    if-eqz p2, :cond_c

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gRQ:Landroid/view/View;

    const v1, 0x7f020893

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 322
    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gRQ:Landroid/view/View;

    const v1, 0x7f020894

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final au(Landroid/view/View;)Lcom/tencent/mm/ui/chatting/cf;
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x18

    .line 259
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;->as(Landroid/view/View;)V

    .line 260
    iget v0, p0, Lcom/tencent/mm/ui/chatting/mb;->type:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/mb;->type:I

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/mb;->type:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/mb;->type:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 262
    :cond_0
    const v0, 0x7f0a0031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->dkq:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0a0217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gMU:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f0a01e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gki:Landroid/view/View;

    .line 265
    const v0, 0x7f0a0216

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gRQ:Landroid/view/View;

    .line 268
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/chatting/mb;->type:I

    if-ne v0, v2, :cond_2

    .line 269
    const v0, 0x7f0a0215

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->gKj:Landroid/widget/ImageView;

    .line 272
    :cond_2
    const v0, 0x7f0a0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->daW:Landroid/widget/CheckBox;

    .line 273
    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/mb;->eyN:Landroid/view/View;

    .line 275
    return-object p0
.end method
