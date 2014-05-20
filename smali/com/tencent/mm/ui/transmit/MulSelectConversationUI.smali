.class public Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/mm/ui/base/ek;


# instance fields
.field private dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

.field private diw:Lcom/tencent/mm/ui/tools/eo;

.field private gLJ:I

.field private gSA:Landroid/widget/ListView;

.field private gSI:Landroid/widget/LinearLayout;

.field private gUQ:Lcom/tencent/mm/ui/contact/db;

.field private gVc:Landroid/widget/Button;

.field private gpY:Z

.field private hrA:Landroid/widget/TextView;

.field private hrB:Landroid/widget/TextView;

.field private hrC:Landroid/widget/TextView;

.field private hrD:Landroid/widget/TextView;

.field private hrE:Landroid/widget/TextView;

.field private final hrF:I

.field private final hrG:I

.field private final hrH:I

.field private hrI:I

.field private imagePath:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 70
    iput v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gLJ:I

    .line 73
    iput v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrF:I

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrG:I

    .line 75
    iput v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrH:I

    .line 77
    iput v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    .line 78
    iput-boolean v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gpY:Z

    .line 79
    iput v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrI:I

    return-void
.end method

.method private U(Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0d003d

    const/4 v1, 0x0

    .line 367
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSI:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->VL()I

    move-result v0

    .line 373
    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gVc:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0709bd

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gVc:Landroid/widget/Button;

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v0, v1

    .line 377
    :goto_2
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_4

    .line 378
    iget-object v3, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 379
    if-nez p2, :cond_0

    .line 380
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 374
    goto :goto_1

    .line 377
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 386
    :cond_4
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-static {v3, p1}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSI:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 395
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 396
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 397
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 398
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d001b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 399
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSI:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->U(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gpY:Z

    return p1
.end method

.method private aPa()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 290
    iget-boolean v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gpY:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrA:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrB:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrD:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrE:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    if-ne v0, v5, :cond_3

    const v0, 0x7f0d0042

    :goto_1
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 324
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 326
    invoke-direct {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->aPb()V

    .line 327
    return-void

    .line 297
    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    const-string v1, "@micromsg.qq.com"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/tencent/mm/ui/contact/db;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrA:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrB:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrC:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrD:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrE:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    if-ne v0, v5, :cond_2

    .line 306
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    const-string v1, "@all.contact.without.chatroom"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/tencent/mm/ui/contact/db;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrA:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrB:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrD:Landroid/widget/TextView;

    const v1, 0x7f0703f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 311
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrD:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrE:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    const-string v1, "@all.chatroom.contact"

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/tencent/mm/ui/contact/db;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrA:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrB:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrC:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrD:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrE:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 322
    :cond_3
    const v0, 0x7f0d001c

    goto/16 :goto_1
.end method

.method private aPb()V
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    packed-switch v0, :pswitch_data_0

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 333
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->ey(Z)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)Lcom/tencent/mm/ui/contact/db;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gpY:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->aPa()V

    return-void
.end method

.method private ey(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->SM()V

    .line 265
    if-eqz p1, :cond_3

    .line 266
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    if-nez v0, :cond_1

    .line 267
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2b28

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->finish()V

    .line 286
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->aPa()V

    .line 287
    return-void

    .line 270
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    if-ne v0, v5, :cond_2

    .line 271
    iput v4, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    goto :goto_0

    .line 274
    :cond_2
    iput v5, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    goto :goto_0

    .line 278
    :cond_3
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    if-nez v0, :cond_4

    .line 279
    iput v5, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    goto :goto_0

    .line 281
    :cond_4
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    if-ne v0, v5, :cond_0

    .line 282
    iput v6, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)I
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->state:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)Lcom/tencent/mm/ui/tools/eo;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0a05db

    const v4, 0x7f030204

    const/4 v1, 0x0

    .line 119
    const v0, 0x7f0708bd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->mn(I)V

    .line 122
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    .line 123
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    .line 125
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSI:Landroid/widget/LinearLayout;

    .line 126
    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gVc:Landroid/widget/Button;

    .line 129
    invoke-static {p0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 130
    const v0, 0x7f0a05d9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrA:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrA:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    const v0, 0x7f0a05da

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrB:Landroid/widget/TextView;

    new-instance v3, Lcom/tencent/mm/ui/transmit/m;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/transmit/m;-><init>(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    const v0, 0x7f0a0078

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrC:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrD:Landroid/widget/TextView;

    new-instance v3, Lcom/tencent/mm/ui/transmit/n;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/transmit/n;-><init>(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 161
    invoke-static {p0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 162
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrE:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrE:Landroid/widget/TextView;

    new-instance v3, Lcom/tencent/mm/ui/transmit/o;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/transmit/o;-><init>(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->hrE:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 175
    new-instance v0, Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/eo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    new-instance v2, Lcom/tencent/mm/ui/transmit/p;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/transmit/p;-><init>(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/ez;)V

    .line 210
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 213
    new-instance v0, Lcom/tencent/mm/ui/contact/db;

    const-string v2, "@micromsg.qq.com"

    const-string v3, ""

    invoke-direct {v0, p0, v2, v3}, Lcom/tencent/mm/ui/contact/db;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    .line 214
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gLJ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    sget-object v3, Lcom/tencent/mm/model/w;->chR:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gLJ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const-string v0, "medianote"

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "weixin"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "officialaccounts"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "newsapp"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/contact/db;->aB(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->aKR()V

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->aKS()V

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    new-instance v2, Lcom/tencent/mm/ui/transmit/q;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/transmit/q;-><init>(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gVc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gVc:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->a(Lcom/tencent/mm/ui/base/ek;)V

    .line 248
    invoke-direct {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->aPb()V

    .line 249
    invoke-virtual {p0, p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 250
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f030205

    return v0
.end method

.method public final lx(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 468
    const v1, 0x7f070a2d

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/contact/db;->VG()[Ljava/lang/String;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_0

    .line 477
    const-string v2, "\u2191"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 482
    :cond_2
    const-string v2, "\u2606"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 483
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 487
    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 488
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/contact/db;->getPositionForSection(I)I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gSA:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 409
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gVc:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/db;->dU(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07019f

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v1

    .line 415
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/transmit/r;

    invoke-direct {v3, p0, v0, v1}, Lcom/tencent/mm/ui/transmit/r;-><init>(Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;Ljava/util/ArrayList;Lcom/tencent/mm/ui/base/ch;)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_0

    .line 449
    iget-object v2, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/contact/db;->wO(Ljava/lang/String;)V

    .line 450
    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->U(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Select_Conv_Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gLJ:I

    .line 94
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_extra_image_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->imagePath:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->FR()V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->gUQ:Lcom/tencent/mm/ui/contact/db;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/db;->closeCursor()V

    .line 105
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->aHU()V

    .line 106
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 254
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 255
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->ey(Z)V

    .line 259
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 461
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->ey(Z)V

    .line 462
    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/mm/ui/transmit/MulSelectConversationUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aNE()V

    .line 115
    :cond_0
    return-void
.end method
