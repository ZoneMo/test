.class public final Lcom/tencent/mm/ui/friend/m;
.super Lcom/tencent/mm/ui/bc;
.source "SourceFile"


# instance fields
.field protected cPK:Lcom/tencent/mm/ui/base/dc;

.field protected cPL:Lcom/tencent/mm/ui/base/cy;

.field protected cPM:Lcom/tencent/mm/ui/base/db;

.field protected cPN:Lcom/tencent/mm/ui/base/cz;

.field private context:Landroid/content/Context;

.field private haP:Landroid/view/View$OnClickListener;

.field private haQ:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/tencent/mm/ah/a;

    invoke-direct {v0}, Lcom/tencent/mm/ah/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/bc;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/tencent/mm/ui/friend/n;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/n;-><init>(Lcom/tencent/mm/ui/friend/m;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/m;->cPN:Lcom/tencent/mm/ui/base/cz;

    .line 284
    new-instance v0, Lcom/tencent/mm/ui/friend/q;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/q;-><init>(Lcom/tencent/mm/ui/friend/m;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/m;->haP:Landroid/view/View$OnClickListener;

    .line 335
    new-instance v0, Lcom/tencent/mm/ui/friend/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/s;-><init>(Lcom/tencent/mm/ui/friend/m;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/m;->haQ:Landroid/view/View$OnClickListener;

    .line 52
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/m;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/m;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/m;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/m;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/friend/m;->setCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/m;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/m;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/tencent/mm/ui/friend/FMessageConversationUI;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/friend/u;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/friend/u;-><init>(Lcom/tencent/mm/ui/friend/m;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ah/e;)Lcom/tencent/mm/storage/i;
    .locals 3
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ah/e;->field_type:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/storage/al;->uQ(Ljava/lang/String;)Lcom/tencent/mm/storage/al;

    move-result-object v1

    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->aCu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->rp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bx(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->rn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->ro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->rk()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bL(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->rC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bA(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->rD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bB(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->rB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bz(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->rJ()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bV(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/al;->rK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bN(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ah/e;->field_msgContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/storage/ao;->uU(Ljava/lang/String;)Lcom/tencent/mm/storage/ao;

    move-result-object v1

    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->aCu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->rp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bx(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->kn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bt(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->rn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bv(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->ro()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bw(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->rk()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bL(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->rB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bz(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->rC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bA(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/ao;->rD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->bB(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final FZ()V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 253
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ah/b;->BD()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/m;->setCursor(Landroid/database/Cursor;)V

    .line 254
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/m;->notifyDataSetChanged()V

    .line 267
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/friend/p;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/p;-><init>(Lcom/tencent/mm/ui/friend/m;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final Ga()V
    .locals 0

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/m;->closeCursor()V

    .line 272
    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/m;->FZ()V

    .line 273
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    check-cast p1, Lcom/tencent/mm/ah/a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/ah/a;

    invoke-direct {p1}, Lcom/tencent/mm/ah/a;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/ah/a;->convertFrom(Landroid/database/Cursor;)V

    return-object p1
.end method

.method public final a(Lcom/tencent/mm/ui/base/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/m;->cPL:Lcom/tencent/mm/ui/base/cy;

    .line 65
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/db;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/m;->cPM:Lcom/tencent/mm/ui/base/db;

    .line 61
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/base/dc;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/m;->cPK:Lcom/tencent/mm/ui/base/dc;

    .line 57
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v8, 0x8

    .line 106
    if-nez p2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/m;->context:Landroid/content/Context;

    const v1, 0x7f030045

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMSlideDelView;

    .line 110
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/m;->context:Landroid/content/Context;

    const v2, 0x7f030111

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 111
    new-instance v2, Lcom/tencent/mm/ui/friend/v;

    invoke-direct {v2}, Lcom/tencent/mm/ui/friend/v;-><init>()V

    .line 112
    const v1, 0x7f0a0382

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/base/MaskLayout;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haW:Lcom/tencent/mm/ui/base/MaskLayout;

    .line 113
    const v1, 0x7f0a0388

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->eDL:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0a0389

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->hbb:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0a0384

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    .line 116
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    iget-object v5, p0, Lcom/tencent/mm/ui/friend/m;->haP:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f0a0385

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    .line 118
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    iget-object v5, p0, Lcom/tencent/mm/ui/friend/m;->haQ:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v1, 0x7f0a0386

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haZ:Landroid/widget/TextView;

    .line 120
    const v1, 0x7f0a0387

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->hba:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0a010e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMSlideDelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->cPU:Landroid/view/View;

    .line 122
    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMSlideDelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/v;->cPV:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/base/MMSlideDelView;->setView(Landroid/view/View;)V

    .line 124
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/m;->cPK:Lcom/tencent/mm/ui/base/dc;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMSlideDelView;->a(Lcom/tencent/mm/ui/base/dc;)V

    .line 125
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/m;->cPL:Lcom/tencent/mm/ui/base/cy;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMSlideDelView;->a(Lcom/tencent/mm/ui/base/cy;)V

    .line 126
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/m;->cPN:Lcom/tencent/mm/ui/base/cz;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMSlideDelView;->a(Lcom/tencent/mm/ui/base/cz;)V

    .line 127
    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMSlideDelView;->aHq()V

    .line 129
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    .line 134
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/friend/m;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ah/a;

    .line 136
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haW:Lcom/tencent/mm/ui/base/MaskLayout;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/MaskLayout;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 138
    iget-object v3, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tencent/mm/pluginsdk/ui/c;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 139
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->eDL:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/m;->context:Landroid/content/Context;

    iget-object v5, v0, Lcom/tencent/mm/ah/a;->field_displayName:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-static {v3, v5, v6}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-wide v5, v0, Lcom/tencent/mm/ah/a;->field_fmsgSysRowId:J

    cmp-long v1, v5, v9

    if-gtz v1, :cond_3

    .line 145
    const-string v1, "MicroMsg.FMessageConversationUI"

    const-string v3, "getView, fconv fmsgSysRowId is invalid, try getLastFmsg"

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v1

    iget-object v3, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ah/f;->gH(Ljava/lang/String;)Lcom/tencent/mm/ah/e;

    move-result-object v1

    .line 147
    if-nez v1, :cond_1

    .line 148
    const-string v1, "MicroMsg.FMessageConversationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getView, lastFmsg is null, talker = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->haZ:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->hba:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->hbb:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_1
    return-object p2

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/friend/v;

    move-object v2, v0

    goto :goto_0

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/tencent/mm/ui/friend/m;->context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/tencent/mm/pluginsdk/ui/preference/n;->a(Landroid/content/Context;Lcom/tencent/mm/ah/e;)Lcom/tencent/mm/pluginsdk/ui/preference/n;

    move-result-object v1

    .line 158
    const-string v3, "MicroMsg.FMessageConversationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getView, lastFmsg talker = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_2
    iget v3, v0, Lcom/tencent/mm/ah/a;->field_state:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 166
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v3

    iget-object v5, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v3

    .line 167
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v3

    if-nez v3, :cond_2

    .line 168
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dy()Lcom/tencent/mm/ah/b;

    move-result-object v3

    iget-object v5, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/tencent/mm/ah/b;->v(Ljava/lang/String;I)Z

    .line 172
    :cond_2
    if-nez v1, :cond_4

    .line 173
    const-string v1, "MicroMsg.FMessageConversationUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getView, fProvider is null, talker = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 175
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->haZ:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->hba:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, v2, Lcom/tencent/mm/ui/friend/v;->hbb:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/m;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/preference/n;->a(Landroid/content/Context;Lcom/tencent/mm/ah/a;)Lcom/tencent/mm/pluginsdk/ui/preference/n;

    move-result-object v1

    .line 161
    const-string v3, "MicroMsg.FMessageConversationUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getView, lastFmsg sysrowid = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/tencent/mm/ah/a;->field_fmsgSysRowId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", talker = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 182
    :cond_4
    iget-object v3, v2, Lcom/tencent/mm/ui/friend/v;->cPU:Landroid/view/View;

    iget-object v5, v0, Lcom/tencent/mm/ah/a;->field_talker:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    iget-object v3, v2, Lcom/tencent/mm/ui/friend/v;->cPU:Landroid/view/View;

    new-instance v5, Lcom/tencent/mm/ui/friend/o;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/friend/o;-><init>(Lcom/tencent/mm/ui/friend/m;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget v3, v0, Lcom/tencent/mm/ah/a;->field_addScene:I

    iput v3, v1, Lcom/tencent/mm/pluginsdk/ui/preference/n;->elN:I

    .line 196
    iget-object v3, v2, Lcom/tencent/mm/ui/friend/v;->hbb:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/tencent/mm/pluginsdk/ui/preference/n;->chj:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget v3, v0, Lcom/tencent/mm/ah/a;->field_state:I

    packed-switch v3, :pswitch_data_0

    .line 237
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 239
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haZ:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->hba:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :goto_3
    const v1, 0x7f0a0381

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 245
    iget v0, v0, Lcom/tencent/mm/ah/a;->field_isNew:I

    if-nez v0, :cond_9

    const v0, 0x7f02052a

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 202
    :pswitch_0
    iget-wide v5, v0, Lcom/tencent/mm/ah/a;->field_fmsgSysRowId:J

    cmp-long v3, v5, v9

    if-gtz v3, :cond_7

    .line 203
    const-string v3, "MicroMsg.FMessageConversationUI"

    const-string v5, "getView, fmsgSysRowId invalid, try use lastRecvFmsg"

    invoke-static {v3, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/tencent/mm/ah/k;->Dx()Lcom/tencent/mm/ah/f;

    move-result-object v3

    iget-object v5, v1, Lcom/tencent/mm/pluginsdk/ui/preference/n;->username:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/tencent/mm/ah/f;->gI(Ljava/lang/String;)Lcom/tencent/mm/ah/e;

    move-result-object v3

    .line 205
    if-nez v3, :cond_6

    move v3, v4

    .line 211
    :goto_5
    if-eqz v3, :cond_5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_8

    .line 212
    :cond_5
    iget-object v3, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    iget-object v3, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 214
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    :goto_6
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haZ:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->hba:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 205
    :cond_6
    iget v3, v3, Lcom/tencent/mm/ah/e;->field_type:I

    goto :goto_5

    .line 207
    :cond_7
    iget v3, v0, Lcom/tencent/mm/ah/a;->field_recvFmsgType:I

    goto :goto_5

    .line 216
    :cond_8
    iget-object v3, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    iget-object v3, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 225
    :pswitch_1
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haZ:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 228
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->hba:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 231
    :pswitch_2
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->hba:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haX:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 233
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haY:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 234
    iget-object v1, v2, Lcom/tencent/mm/ui/friend/v;->haZ:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 245
    :cond_9
    const v0, 0x7f020195

    goto/16 :goto_4

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
