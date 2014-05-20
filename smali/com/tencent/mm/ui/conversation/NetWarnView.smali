.class public Lcom/tencent/mm/ui/conversation/NetWarnView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private cIr:Landroid/app/ProgressDialog;

.field private context:Landroid/content/Context;

.field private cuA:Z

.field private daU:Landroid/widget/ImageView;

.field private daV:Landroid/widget/TextView;

.field private dkR:Landroid/widget/TextView;

.field private gZT:Landroid/widget/TextView;

.field private gZU:Landroid/widget/ImageView;

.field private gZV:Landroid/widget/ImageView;

.field private gZW:Landroid/widget/ProgressBar;

.field private gZX:Ljava/lang/String;

.field private gZY:Z

.field private gZZ:Z

.field private gZv:Landroid/widget/ImageView;

.field private gsX:Landroid/widget/TextView;

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->cIr:Landroid/app/ProgressDialog;

    .line 63
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->cuA:Z

    .line 65
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZY:Z

    .line 329
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZZ:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->cIr:Landroid/app/ProgressDialog;

    .line 63
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->cuA:Z

    .line 65
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZY:Z

    .line 329
    iput-boolean v1, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZZ:Z

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/conversation/NetWarnView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZX:Ljava/lang/String;

    return-object v0
.end method

.method private aLI()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZY:Z

    if-nez v0, :cond_0

    .line 76
    const v0, 0x7f0a05f9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daV:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a05fa

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0a05fb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gsX:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0a05fd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZT:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0a05fc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZW:Landroid/widget/ProgressBar;

    .line 81
    const v0, 0x7f0a05f8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0a0600

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZv:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f0a05ff

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZU:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0a05fe

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZV:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZY:Z

    .line 88
    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->padding:I

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/conversation/NetWarnView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/conversation/NetWarnView;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZZ:Z

    return v0
.end method


# virtual methods
.method public final arP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setBackgroundResource(I)V

    .line 242
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZU:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZV:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    return-void
.end method

.method public final bZ(Landroid/content/Context;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 97
    .line 98
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->context:Landroid/content/Context;

    .line 101
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/n/ac;->wS()I

    move-result v0

    .line 103
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/n/ac;->getNetworkServerIp()Ljava/lang/String;

    move-result-object v4

    .line 104
    const-string v5, "http://w.mail.qq.com/cgi-bin/report_mm?failuretype=1&devicetype=2&clientversion=%s&os=%s&username=%s&iport=%s&t=weixin_bulletin&f=xhtml&lang=%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "0x"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v7, Lcom/tencent/mm/protocal/a;->fxk:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x2

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    const/4 v4, 0x4

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZX:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->aLI()V

    .line 110
    const-string v4, "MicroMsg.NetWarnView"

    const-string v5, "update st:%d"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 183
    :goto_0
    if-eqz v0, :cond_2

    .line 191
    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gsX:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daV:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    const v4, 0x7f020802

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setBackgroundResource(I)V

    .line 194
    iget v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->padding:I

    iget v5, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->padding:I

    invoke-virtual {p0, v4, v2, v5, v2}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setPadding(IIII)V

    .line 195
    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    const v5, 0x7f020593

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZU:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZV:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 229
    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    sget-boolean v4, Lcom/tencent/mm/platformtools/at;->cHg:Z

    if-eqz v4, :cond_1

    .line 231
    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/ba;->bv(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lcom/tencent/mm/sdk/platformtools/ba;->lK(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZZ:Z

    if-nez v5, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daV:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->context:Landroid/content/Context;

    const v6, 0x7f07077e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->context:Landroid/content/Context;

    const v6, 0x7f07077d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZT:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZW:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/tencent/mm/ui/conversation/ce;

    invoke-direct {v0, p0, v4}, Lcom/tencent/mm/ui/conversation/ce;-><init>(Lcom/tencent/mm/ui/conversation/NetWarnView;I)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZv:Landroid/widget/ImageView;

    new-instance v5, Lcom/tencent/mm/ui/conversation/cf;

    invoke-direct {v5, p0, v4}, Lcom/tencent/mm/ui/conversation/cf;-><init>(Lcom/tencent/mm/ui/conversation/NetWarnView;I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v3

    .line 234
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZV:Landroid/widget/ImageView;

    const v4, 0x7f02012a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZv:Landroid/widget/ImageView;

    const v4, 0x7f0200d1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setVisibility(I)V

    .line 237
    return v0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daV:Landroid/widget/TextView;

    const v4, 0x7f0701cc

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZT:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZW:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    new-instance v0, Lcom/tencent/mm/ui/conversation/ca;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/conversation/ca;-><init>(Lcom/tencent/mm/ui/conversation/NetWarnView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v3

    .line 131
    goto/16 :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daV:Landroid/widget/TextView;

    const v4, 0x7f0701cb

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZT:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZW:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v3

    .line 141
    goto/16 :goto_0

    .line 146
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daV:Landroid/widget/TextView;

    const v4, 0x7f0701cf

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZT:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZW:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    new-instance v0, Lcom/tencent/mm/ui/conversation/cb;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/conversation/cb;-><init>(Lcom/tencent/mm/ui/conversation/NetWarnView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v3

    .line 158
    goto/16 :goto_0

    .line 163
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daV:Landroid/widget/TextView;

    const v4, 0x7f0701d0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 164
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0701d1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZT:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZW:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    new-instance v0, Lcom/tencent/mm/ui/conversation/cc;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/conversation/cc;-><init>(Lcom/tencent/mm/ui/conversation/NetWarnView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v3

    goto/16 :goto_0

    .line 199
    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sk()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sl()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/mm/plugin/webwx/a/a;->jU(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/plugin/webwx/a/a;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->sl()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/tencent/mm/plugin/webwx/a/a;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_1

    .line 202
    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sk()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/tencent/mm/plugin/webwx/a/a;->feT:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 204
    const v0, 0x7f020803

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setBackgroundResource(I)V

    .line 205
    iget v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->padding:I

    iget v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->padding:I

    invoke-virtual {p0, v0, v2, v4, v2}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setPadding(IIII)V

    .line 206
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->dkR:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gsX:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gsX:Landroid/widget/TextView;

    sget-object v4, Lcom/tencent/mm/plugin/webwx/a/a;->feT:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZT:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZW:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    const v4, 0x7f020595

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->daU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZU:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v4, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZV:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/model/v;->tn()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    new-instance v0, Lcom/tencent/mm/ui/conversation/cd;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/conversation/cd;-><init>(Lcom/tencent/mm/ui/conversation/NetWarnView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v3

    goto/16 :goto_1

    :cond_4
    move v0, v2

    .line 217
    goto :goto_4

    .line 231
    :cond_5
    iget-object v3, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->gZv:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    move v2, v1

    .line 236
    goto/16 :goto_3

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    invoke-direct {p0}, Lcom/tencent/mm/ui/conversation/NetWarnView;->aLI()V

    .line 72
    return-void
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/conversation/NetWarnView;->context:Landroid/content/Context;

    .line 94
    return-void
.end method
