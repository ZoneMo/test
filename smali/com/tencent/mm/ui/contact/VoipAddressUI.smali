.class public Lcom/tencent/mm/ui/contact/VoipAddressUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"


# instance fields
.field private dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

.field private dLM:Lcom/tencent/mm/ui/base/ek;

.field private diw:Lcom/tencent/mm/ui/tools/eo;

.field private eSl:Z

.field private gSA:Landroid/widget/ListView;

.field private gSB:Landroid/widget/TextView;

.field private gVM:Lcom/tencent/mm/ui/contact/fe;

.field private gVN:Z

.field private gVb:Lcom/tencent/mm/ui/base/ce;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVN:Z

    .line 54
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->eSl:Z

    .line 299
    new-instance v0, Lcom/tencent/mm/ui/contact/fo;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/fo;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->dLM:Lcom/tencent/mm/ui/base/ek;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSA:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/VoipAddressUI;Lcom/tencent/mm/ui/base/ce;)Lcom/tencent/mm/ui/base/ce;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/VoipAddressUI;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/contact/fe;->ih(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private aLb()Ljava/util/List;
    .locals 3

    .prologue
    .line 356
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 357
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 358
    invoke-static {}, Lcom/tencent/mm/model/w;->tT()Ljava/util/List;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 364
    :cond_0
    const-string v0, "weixin"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    const-string v0, "weibo"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    const-string v0, "qqmail"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v0, "fmessage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    const-string v0, "tmessage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const-string v0, "qmessage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v0, "qqsync"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    const-string v0, "floatbottle"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    const-string v0, "lbsapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const-string v0, "shakeapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v0, "medianote"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v0, "qqfriend"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v0, "readerapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v0, "newsapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v0, "blogapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v0, "facebookapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    const-string v0, "masssendapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v0, "meishiapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v0, "feedsapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v0, "voipapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    const-string v0, "filehelper"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v0, "officialaccounts"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v0, "helper_entry"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v0, "pc_share"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v0, "cardpackage"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v0, "voicevoipapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v0, "voiceinputapp"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v0, "linkedinplugin"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/fe;->aB(Ljava/util/List;)V

    .line 397
    return-object v1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Lcom/tencent/mm/ui/contact/fe;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVN:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->eSl:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/contact/VoipAddressUI;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method


# virtual methods
.method protected final FR()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 143
    const v0, 0x7f0a087c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    const v0, 0x7f0a006f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSA:Landroid/widget/ListView;

    .line 145
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSB:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSB:Landroid/widget/TextView;

    const v1, 0x7f0703e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSB:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    new-instance v0, Lcom/tencent/mm/ui/contact/fe;

    const-string v1, "@micromsg.qq.com"

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/contact/fe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    new-instance v1, Lcom/tencent/mm/ui/contact/fg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/fg;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/fe;->a(Lcom/tencent/mm/ui/bd;)V

    .line 163
    new-instance v0, Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/eo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    new-instance v1, Lcom/tencent/mm/ui/contact/fh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/fh;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/ez;)V

    .line 186
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    .line 188
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSA:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/fi;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/fi;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/contact/fj;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/fj;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gSA:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/applet/a;

    new-instance v2, Lcom/tencent/mm/ui/contact/fk;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/contact/fk;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/applet/a;-><init>(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 261
    new-instance v0, Lcom/tencent/mm/ui/contact/fl;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/fl;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    .line 269
    new-instance v0, Lcom/tencent/mm/ui/contact/fm;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/fm;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 279
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    .line 280
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->dLM:Lcom/tencent/mm/ui/base/ek;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->a(Lcom/tencent/mm/ui/base/ek;)V

    .line 284
    new-instance v0, Lcom/tencent/mm/ui/contact/fn;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/contact/fn;-><init>(Lcom/tencent/mm/ui/contact/VoipAddressUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 297
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f03001d

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LauncherUI.Shortcut.LaunchType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    const-string v1, "launch_type_voip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iput-boolean v2, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVN:Z

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "voip_video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->eSl:Z

    .line 108
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Add_address_titile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 110
    :cond_1
    const v0, 0x7f0703de

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_2
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->vT(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->FR()V

    .line 114
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->aLb()Ljava/util/List;

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->dLK:Lcom/tencent/mm/ui/base/AlphabetScrollBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/AlphabetScrollBar;->aHU()V

    .line 120
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/fe;->closeCursor()V

    .line 121
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/fe;->aDU()V

    .line 122
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 123
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVN:Z

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->startActivity(Landroid/content/Intent;)V

    .line 338
    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->finish()V

    .line 340
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVb:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aNE()V

    .line 138
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/VoipAddressUI;->aLb()Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/VoipAddressUI;->gVM:Lcom/tencent/mm/ui/contact/fe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/fe;->ca(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method
