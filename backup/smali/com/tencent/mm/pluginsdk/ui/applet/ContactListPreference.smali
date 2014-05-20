.class public Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;
.super Lcom/tencent/mm/ui/base/preference/Preference;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dms:Landroid/widget/GridView;

.field private dne:Landroid/widget/AdapterView$OnItemClickListener;

.field private dxK:Ljava/util/List;

.field private fnL:Z

.field private fnM:Z

.field private fnQ:Landroid/view/View$OnClickListener;

.field private fnR:Landroid/view/View$OnClickListener;

.field private fnS:Landroid/view/View;

.field private fnT:Landroid/view/View;

.field private fnZ:Ljava/util/ArrayList;

.field private foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

.field private foE:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private foF:Lcom/tencent/mm/pluginsdk/ui/applet/ad;

.field private foG:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private foH:I

.field private foI:Landroid/view/View;

.field private foJ:Landroid/widget/FrameLayout;

.field private foK:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foE:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 40
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foF:Lcom/tencent/mm/pluginsdk/ui/applet/ad;

    .line 42
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ab;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ab;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foG:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 55
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ac;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dne:Landroid/widget/AdapterView$OnItemClickListener;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dxK:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnZ:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foH:I

    .line 101
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnL:Z

    .line 102
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnM:Z

    .line 122
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->context:Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->ase()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/mm/ui/base/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foE:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 40
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foF:Lcom/tencent/mm/pluginsdk/ui/applet/ad;

    .line 42
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ab;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ab;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foG:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 55
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ac;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ac;-><init>(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dne:Landroid/widget/AdapterView$OnItemClickListener;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dxK:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnZ:Ljava/util/ArrayList;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foH:I

    .line 101
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnL:Z

    .line 102
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnM:Z

    .line 128
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->context:Landroid/content/Context;

    .line 129
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->ase()V

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ak;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    return-object v0
.end method

.method private a(Landroid/widget/GridView;)V
    .locals 7
    .parameter

    .prologue
    .line 293
    const-string v0, "MicroMsg.ContactListPreference"

    const-string v1, "setListViewHeightBasedOnChildren change"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-nez p1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 303
    const-string v1, "MicroMsg.ContactListPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icount "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foH:I

    if-eq v0, v1, :cond_0

    .line 308
    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foH:I

    .line 310
    if-ltz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->context:Landroid/content/Context;

    const/high16 v2, 0x42aa

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 316
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->context:Landroid/content/Context;

    const/high16 v3, 0x40a0

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 317
    const/high16 v3, 0x4040

    mul-float/2addr v3, v2

    .line 318
    const-string v4, "MicroMsg.ContactListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dip "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  icount:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    mul-int/lit16 v1, v0, 0xb4

    add-int/lit8 v1, v1, 0x0

    .line 324
    const-string v4, "MicroMsg.ContactListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_totalHeight "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mH:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "padding:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", paddingTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    int-to-float v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 330
    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 331
    invoke-virtual {p1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 332
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 333
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private ase()V
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    .line 134
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;)Lcom/tencent/mm/pluginsdk/ui/applet/ad;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foF:Lcom/tencent/mm/pluginsdk/ui/applet/ad;

    return-object v0
.end method


# virtual methods
.method public final asa()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->asa()Z

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final km(I)Z
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->km(I)Z

    move-result v0

    .line 347
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final kn(I)Z
    .locals 1
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->kn(I)Z

    move-result v0

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ko(I)Z
    .locals 1
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->ko(I)Z

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final kp(I)Z
    .locals 1
    .parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->kp(I)Z

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyChanged()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->notifyChanged()V

    .line 418
    :cond_0
    const-string v0, "MicroMsg.ContactListPreference"

    const-string v1, "notifyChanged set setListViewHeightBasedOnChildren"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->a(Landroid/widget/GridView;)V

    .line 420
    return-void
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnZ:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    move v0, v1

    .line 186
    :goto_0
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foH:I

    .line 187
    const-string v4, "MicroMsg.ContactListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MicroMsg.RoomInfoContPreference BindView  memberList->Size : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dxK:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " memberContactList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget v0, Lcom/tencent/mm/i;->avL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setDrawingCacheEnabled(Z)V

    .line 194
    sget v0, Lcom/tencent/mm/i;->aHK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foI:Landroid/view/View;

    .line 195
    sget v0, Lcom/tencent/mm/i;->aHI:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foJ:Landroid/widget/FrameLayout;

    .line 196
    sget v0, Lcom/tencent/mm/i;->aHH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foK:Landroid/widget/FrameLayout;

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foH:I

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnS:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foJ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnS:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnS:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foJ:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnS:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnQ:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foJ:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foJ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnT:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foD:Lcom/tencent/mm/pluginsdk/ui/applet/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ak;->asc()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foK:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 236
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnT:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foK:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnT:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 240
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnR:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_7

    .line 241
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foK:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnR:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foK:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 246
    :cond_4
    sget v0, Lcom/tencent/mm/h;->ady:I

    .line 261
    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foI:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foE:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_8

    .line 279
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foE:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 284
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dne:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->a(Landroid/widget/GridView;)V

    .line 287
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/base/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 289
    const-string v0, "MicroMsg.ContactListPreference"

    const-string v4, "onbindview, %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    return-void

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->fnZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto/16 :goto_0

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foJ:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto/16 :goto_1

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foK:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_2

    .line 281
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->dms:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/tencent/mm/pluginsdk/ui/applet/ContactListPreference;->foG:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_3
.end method
