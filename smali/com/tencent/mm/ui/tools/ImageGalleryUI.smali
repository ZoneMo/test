.class public Lcom/tencent/mm/ui/tools/ImageGalleryUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private bNl:Ljava/lang/String;

.field private cWi:Ljava/lang/String;

.field private dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

.field private dna:Lcom/tencent/mm/sdk/platformtools/ay;

.field private dnc:Z

.field private dnd:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private dne:Landroid/widget/AdapterView$OnItemClickListener;

.field handler:Landroid/os/Handler;

.field hjK:I

.field hjL:I

.field hjM:F

.field hjN:F

.field private final hjs:Z

.field private hka:Lcom/tencent/mm/ui/tools/bs;

.field private hkb:Landroid/widget/TextView;

.field private hkc:Landroid/widget/TextView;

.field private hkd:Landroid/widget/TextView;

.field private hke:Landroid/widget/Button;

.field private hkf:Landroid/widget/FrameLayout;

.field hkg:Landroid/graphics/drawable/ColorDrawable;

.field hkh:Ljava/util/ArrayList;

.field private hki:Z

.field private hkj:Z

.field private hkk:Z

.field private hkl:Z

.field hkm:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkh:Ljava/util/ArrayList;

    .line 81
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dnc:Z

    .line 82
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hki:Z

    .line 83
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkj:Z

    .line 84
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkk:Z

    .line 85
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkl:Z

    .line 95
    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjs:Z

    .line 455
    new-instance v0, Lcom/tencent/mm/ui/tools/co;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/co;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dne:Landroid/widget/AdapterView$OnItemClickListener;

    .line 479
    new-instance v0, Lcom/tencent/mm/ui/tools/cq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/cq;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dnd:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;Lcom/tencent/mm/sdk/platformtools/ay;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dna:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/MMGestureGallery;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->oe(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/ImageGalleryUI;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dnc:Z

    return p1
.end method

.method private aNp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->cWi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->cWi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->cWi:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->bNl:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/ui/tools/bs;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->of(I)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Lcom/tencent/mm/sdk/platformtools/ay;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dna:Lcom/tencent/mm/sdk/platformtools/ay;

    return-object v0
.end method

.method private e(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 536
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-static {p1, p2}, Lcom/tencent/mm/ui/tools/bs;->d(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)I

    move-result v1

    .line 537
    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/tencent/mm/w/e;->AM()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 538
    :catch_0
    move-exception v1

    .line 539
    const-string v2, "MicroMsg.ImageGalleryUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dnc:Z

    return v0
.end method

.method private eq(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 618
    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 624
    :goto_0
    return-void

    .line 621
    :cond_0
    const-string v0, "MicroMsg.ImageGalleryUI"

    const-string v1, "request custom title"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hki:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hki:Z

    return v0
.end method

.method private oe(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/tools/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 525
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/bs;->S(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;

    move-result-object v2

    .line 526
    iget-object v3, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/bs;->d(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)I

    move-result v0

    .line 527
    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/w/e;->AM()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 527
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    const-string v2, "MicroMsg.ImageGalleryUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 531
    goto :goto_0
.end method

.method private of(I)V
    .locals 3
    .parameter

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkj:Z

    if-nez v0, :cond_0

    .line 632
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->finish()V

    .line 634
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 635
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/tools/ImageGalleryGridUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 636
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 637
    const-string v1, "kintent_intent_source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    const-string v1, "kintent_talker"

    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v1, "kintent_image_count"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/bs;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    const-string v1, "kintent_image_index"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    const-string v1, "kintent_downloaded_index_list"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkh:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 642
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->startActivity(Landroid/content/Intent;)V

    .line 644
    const v0, 0x7f040028

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->overridePendingTransition(II)V

    .line 645
    return-void
.end method


# virtual methods
.method protected final FR()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 160
    iput-boolean v8, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkl:Z

    .line 161
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_gallery_talker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->bNl:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_gallery_enter_from_grid"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkj:Z

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MicroMsg.ImageGalleryUI initView, talker is null, stack = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->bNl:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v7

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 164
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_gallery_chatroom_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->cWi:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_gallery_is_restransmit_after_download"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 166
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_gallery_directly_send_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_gallery_msg_id"

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 169
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_gallery_msg_svr_id"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "MicroMsg.ImageGalleryUI initView, msgId is invalid, msgId = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", msgSvrId = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", stack = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    cmp-long v0, v2, v9

    if-gtz v0, :cond_0

    if-lez v1, :cond_3

    :cond_0
    move v0, v7

    :goto_1
    invoke-static {v4, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 172
    cmp-long v0, v2, v9

    if-nez v0, :cond_1

    .line 173
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/ap;->ae(Ljava/lang/String;I)Lcom/tencent/mm/storage/ak;

    move-result-object v2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "MicroMsg.ImageGalleryUI initView, msg does not exist, msgSvrId = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-lez v0, :cond_4

    move v0, v7

    :goto_2
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 175
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    .line 178
    :cond_1
    new-instance v0, Lcom/tencent/mm/ui/tools/bs;

    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNp()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/tools/bs;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;JLjava/lang/String;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    .line 179
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/bs;->aNk()V

    .line 180
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "start_chatting_ui"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/bs;->eo(Z)V

    .line 181
    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    .line 182
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setVerticalFadingEdgeEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dnd:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dne:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 188
    const v0, 0x7f0a042e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkb:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f0a0430

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkd:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0a042f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkc:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0a02a7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hke:Landroid/widget/Button;

    .line 192
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hke:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/tools/ce;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/ce;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hke:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aNp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/ap;->j(Ljava/lang/String;J)I

    move-result v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/bs;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->vT(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setSelection(I)V

    .line 203
    new-instance v0, Lcom/tencent/mm/ui/tools/cg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/cg;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    const v0, 0x7f020539

    new-instance v1, Lcom/tencent/mm/ui/tools/ch;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/ch;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V

    invoke-virtual {p0, v8, v0, v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 204
    const v0, 0x7f0a02a6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f0a0431

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/mm/ui/tools/cn;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/cn;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void

    :cond_2
    move v0, v8

    .line 163
    goto/16 :goto_0

    :cond_3
    move v0, v8

    .line 170
    goto/16 :goto_1

    :cond_4
    move v0, v8

    .line 174
    goto/16 :goto_2
.end method

.method protected final Iw()I
    .locals 1

    .prologue
    .line 450
    const/4 v0, -0x1

    return v0
.end method

.method protected final aEN()V
    .locals 3

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aES()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aES()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 445
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aES()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 446
    return-void
.end method

.method public final aNq()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const-wide/16 v4, 0x1f4

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setPivotX(F)V

    .line 273
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setPivotY(F)V

    .line 274
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iget v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjM:F

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setScaleX(F)V

    .line 275
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iget v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjN:F

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setScaleY(F)V

    .line 276
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iget v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjK:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setTranslationX(F)V

    .line 277
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    iget v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hjL:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setTranslationY(F)V

    .line 278
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->setAlpha(F)V

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkg:Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 290
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 288
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method final aNr()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public final az(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v0, 0x8

    .line 414
    const v1, 0x7f0a02a6

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 415
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 419
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 420
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aal()Landroid/app/Activity;

    move-result-object v2

    if-eqz p1, :cond_4

    const v0, 0x7f040006

    :goto_1
    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 421
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 420
    :cond_4
    const v0, 0x7f040008

    goto :goto_1
.end method

.method public final ep(Z)V
    .locals 0
    .parameter

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dg(Z)V

    .line 427
    return-void
.end method

.method final g(ZI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 545
    if-eqz p1, :cond_9

    .line 546
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    if-nez v0, :cond_0

    .line 547
    const-string v0, "MicroMsg.ImageGalleryUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTitleFooterVisible fail, adapter is null, position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-direct {p0, v6}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->eq(Z)V

    .line 553
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aFe()V

    .line 554
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/tools/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 555
    if-nez v0, :cond_1

    .line 556
    const-string v0, "MicroMsg.ImageGalleryUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTitleFooterVisible fail, msg is null, position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/bs;->S(Lcom/tencent/mm/storage/ak;)Lcom/tencent/mm/w/e;

    move-result-object v3

    .line 561
    if-nez v3, :cond_2

    .line 562
    const-string v0, "MicroMsg.ImageGalleryUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setTitleFooterVisible fail, img is null, position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {v1, p2}, Lcom/tencent/mm/ui/tools/bs;->ob(I)Z

    move-result v1

    .line 568
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dg(Z)V

    .line 570
    if-nez v1, :cond_3

    .line 571
    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->az(Z)V

    goto :goto_0

    .line 573
    :cond_3
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->az(Z)V

    .line 574
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-lez v1, :cond_4

    .line 575
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkb:Landroid/widget/TextView;

    const v2, 0x7f0708c1

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :goto_1
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->DL()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 598
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkc:Landroid/widget/TextView;

    const-string v4, "MM-dd"

    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkd:Landroid/widget/TextView;

    const-string v4, "kk:mm"

    invoke-static {v4, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getSelectedItemPosition()I

    invoke-direct {p0, v0, v3}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->e(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/w/e;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 604
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hke:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 578
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->cWi:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->cWi:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 579
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->bNl:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->cWi:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/model/w;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/bv;->dw(Ljava/lang/String;)I

    move-result v2

    .line 581
    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 582
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    .line 584
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 585
    invoke-static {v2, v4}, Lcom/tencent/mm/model/w;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aal()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkb:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v2, v1, v4}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    .line 593
    iget-object v4, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkb:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    if-lez v5, :cond_6

    move-object v1, v2

    :cond_6
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 589
    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->bNl:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 606
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hke:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 611
    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->aFd()V

    .line 612
    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->eq(Z)V

    .line 613
    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->az(Z)V

    goto/16 :goto_0

    .line 600
    :catch_0
    move-exception v1

    goto/16 :goto_2
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 439
    const v0, 0x7f030146

    return v0
.end method

.method final getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkj:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->of(I)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkg:Landroid/graphics/drawable/ColorDrawable;

    .line 101
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->FR()V

    .line 102
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkm:Landroid/os/Bundle;

    .line 103
    new-instance v0, Lcom/tencent/mm/ui/tools/cd;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/cd;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->handler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/bs;->detach()V

    .line 132
    iput-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hka:Lcom/tencent/mm/ui/tools/bs;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dna:Lcom/tencent/mm/sdk/platformtools/ay;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dna:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 137
    iput-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dna:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    iput-object v2, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->handler:Landroid/os/Handler;

    .line 142
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_gallery_back_from_grid"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkk:Z

    .line 122
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkk:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkm:Landroid/os/Bundle;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkj:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkl:Z

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStart()V

    .line 126
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkl:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    const v0, 0x7f0a029f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkf:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "img_gallery_top"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "img_gallery_left"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "img_gallery_width"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "img_gallery_height"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v0, v6, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkf:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->dka:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/tencent/mm/ui/tools/cf;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/cf;-><init>(Lcom/tencent/mm/ui/tools/ImageGalleryUI;IIII)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ImageGalleryUI;->hkf:Landroid/widget/FrameLayout;

    const/high16 v6, -0x100

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_1
.end method
