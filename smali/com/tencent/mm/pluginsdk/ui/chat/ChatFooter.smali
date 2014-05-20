.class public Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final cSv:[I

.field private static final cSw:[I

.field private static count:I


# instance fields
.field private cSD:Landroid/widget/ImageView;

.field private cSL:Z

.field private final cST:Landroid/os/Handler;

.field private dli:Landroid/view/View;

.field private dlj:Landroid/view/View;

.field private dlk:Landroid/view/View;

.field private dll:Landroid/view/View;

.field private eDV:Lcom/tencent/mm/ui/widget/MMEditText;

.field private eDW:Landroid/widget/Button;

.field private eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

.field private eML:Lcom/tencent/mm/ui/base/ce;

.field private eMM:Landroid/widget/TextView;

.field private eMN:Landroid/widget/ImageView;

.field private eMO:Landroid/view/View;

.field private fkk:I

.field private fng:Landroid/view/View;

.field private fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

.field private fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

.field private fpS:Landroid/widget/TextView;

.field private fpT:Landroid/widget/Button;

.field private fpU:Landroid/widget/ImageButton;

.field private fpV:Landroid/widget/LinearLayout;

.field private fpW:Landroid/widget/FrameLayout;

.field private fpX:Landroid/widget/ImageButton;

.field private fpY:Landroid/widget/ImageButton;

.field private fpZ:Lcom/tencent/mm/ui/base/x;

.field private volatile fqA:Z

.field private fqB:Z

.field private final fqC:I

.field private final fqD:I

.field private volatile fqE:Z

.field private fqF:Landroid/os/Handler;

.field private fqa:Lcom/tencent/mm/pluginsdk/ui/chat/au;

.field private fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

.field private fqc:Lcom/tencent/mm/pluginsdk/ui/chat/an;

.field private fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

.field private final fqe:Lcom/tencent/mm/pluginsdk/ui/chat/al;

.field private fqf:Z

.field private fqg:Landroid/view/inputmethod/InputMethodManager;

.field private fqh:I

.field private fqi:Z

.field private fqj:Z

.field private fqk:Lcom/tencent/mm/pluginsdk/ui/chat/bi;

.field private fql:Z

.field private fqm:Lcom/tencent/mm/pluginsdk/model/app/bj;

.field private fqn:Lcom/tencent/mm/pluginsdk/ui/h;

.field private fqo:Lcom/tencent/mm/pluginsdk/ui/chat/m;

.field private fqp:I

.field private final fqq:I

.field private final fqr:I

.field private final fqs:I

.field private final fqt:I

.field private final fqu:I

.field private final fqv:I

.field private fqw:I

.field private fqx:I

.field private fqy:Z

.field private fqz:I

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 584
    sput v2, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->count:I

    .line 1123
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSv:[I

    .line 1124
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/tencent/mm/h;->abL:I

    aput v1, v0, v2

    const/4 v1, 0x1

    sget v2, Lcom/tencent/mm/h;->abM:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/tencent/mm/h;->abN:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/tencent/mm/h;->abO:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/tencent/mm/h;->abP:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/tencent/mm/h;->abQ:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/tencent/mm/h;->abR:I

    aput v2, v0, v1

    sput-object v0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSw:[I

    return-void

    .line 1123
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    .line 87
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    .line 88
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    .line 90
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpS:Landroid/widget/TextView;

    .line 104
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

    .line 106
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/al;

    invoke-direct {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/al;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqe:Lcom/tencent/mm/pluginsdk/ui/chat/al;

    .line 107
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqf:Z

    .line 136
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSL:Z

    .line 137
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqi:Z

    .line 140
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqj:Z

    .line 142
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/n;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/n;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqk:Lcom/tencent/mm/pluginsdk/ui/chat/bi;

    .line 151
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/x;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/x;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->mHandler:Landroid/os/Handler;

    .line 260
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fql:Z

    .line 506
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/ak;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ak;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqm:Lcom/tencent/mm/pluginsdk/model/app/bj;

    .line 744
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/s;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqn:Lcom/tencent/mm/pluginsdk/ui/h;

    .line 811
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/t;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/t;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqo:Lcom/tencent/mm/pluginsdk/ui/chat/m;

    .line 971
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/v;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/v;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cST:Landroid/os/Handler;

    .line 1065
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqp:I

    .line 1560
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqq:I

    .line 1561
    iput v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqr:I

    .line 1563
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqs:I

    .line 1565
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqt:I

    .line 1567
    const/16 v0, 0x15

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqu:I

    .line 1569
    const/16 v0, 0x16

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqv:I

    .line 1713
    iput v8, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    .line 1715
    iput v8, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqx:I

    .line 1717
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqy:Z

    .line 1719
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    .line 1722
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqA:Z

    .line 1823
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqB:Z

    .line 1913
    const/16 v0, 0x1001

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqC:I

    .line 1914
    const/16 v0, 0x1002

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqD:I

    .line 1918
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/ad;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ad;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqF:Landroid/os/Handler;

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 256
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqg:Landroid/view/inputmethod/InputMethodManager;

    sget v0, Lcom/tencent/mm/k;->aSY:I

    invoke-static {p1, v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v5, Lcom/tencent/mm/i;->aML:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpV:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v5, Lcom/tencent/mm/i;->aph:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/widget/MMEditText;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    sget v0, Lcom/tencent/mm/i;->apg:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v5, Lcom/tencent/mm/i;->ape:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpX:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v5, Lcom/tencent/mm/i;->apl:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cA(Z)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v5, 0x10510

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fql:Z

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-direct {v0, v5, v6, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/au;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqa:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getRootView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-direct {v0, v5, v6, p0, v7}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqk:Lcom/tencent/mm/pluginsdk/ui/chat/bi;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bi;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v5, Lcom/tencent/mm/i;->aPd:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    sget v0, Lcom/tencent/mm/i;->apj:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpU:Landroid/widget/ImageButton;

    const-string v0, "MicroMsg.ChatFooter"

    const-string v5, "send edittext ime option %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v7}, Lcom/tencent/mm/ui/widget/MMEditText;->getImeOptions()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/af;

    invoke-direct {v5, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/af;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/widget/MMEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/ag;

    invoke-direct {v5, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ag;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/widget/MMEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/ah;

    invoke-direct {v5, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ah;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/widget/MMEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/ai;

    invoke-direct {v5, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ai;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/q;

    invoke-direct {v5, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/q;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/r;

    invoke-direct {v5, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/r;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpU:Landroid/widget/ImageButton;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/p;

    invoke-direct {v5, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/p;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/chat/ap;->ata()Lcom/tencent/mm/pluginsdk/ui/chat/aq;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/ao;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/chat/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    :cond_0
    :goto_0
    sget v0, Lcom/tencent/mm/i;->apd:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqo:Lcom/tencent/mm/pluginsdk/ui/chat/m;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->a(Lcom/tencent/mm/pluginsdk/ui/chat/m;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bc(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->kx(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpX:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpX:Landroid/widget/ImageButton;

    new-instance v5, Lcom/tencent/mm/pluginsdk/ui/chat/aj;

    invoke-direct {v5, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/aj;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bc(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->kD(I)V

    .line 257
    const-string v0, "MicroMsg.ChatFooter"

    const-string v5, "init time: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v3, v6, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void

    .line 256
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/chat/ap;->ata()Lcom/tencent/mm/pluginsdk/ui/chat/aq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/chat/aq;->aW(Landroid/content/Context;)Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    iget v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fkk:I

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->kf(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    const/4 v6, -0x2

    invoke-virtual {v0, v5, v8, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqn:Lcom/tencent/mm/pluginsdk/ui/h;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->a(Lcom/tencent/mm/pluginsdk/ui/h;)V

    iget-object v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/widget/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->ch(Z)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bc(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->kR(I)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static synthetic A(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpS:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic B(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/pluginsdk/ui/chat/am;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

    return-object v0
.end method

.method static synthetic C(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic E(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x1001

    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqF:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqF:Landroid/os/Handler;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private SM()V
    .locals 1

    .prologue
    .line 1609
    invoke-static {p0}, Lcom/tencent/mm/sdk/platformtools/cj;->af(Landroid/view/View;)V

    .line 1610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqA:Z

    .line 1613
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Lcom/tencent/mm/ui/base/x;)Lcom/tencent/mm/ui/base/x;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpZ:Lcom/tencent/mm/ui/base/x;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/ui/widget/MMEditText;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->ky(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cB(Z)V

    return-void
.end method

.method public static asN()V
    .locals 0

    .prologue
    .line 1504
    return-void
.end method

.method private asV()V
    .locals 2

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1907
    return-void
.end method

.method static synthetic asW()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->count:I

    return v0
.end method

.method static synthetic asX()I
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->count:I

    return v0
.end method

.method private b(IIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1617
    if-eqz p3, :cond_7

    .line 1618
    packed-switch p1, :pswitch_data_0

    move p3, v1

    .line 1685
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    if-eq p2, v4, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    if-nez v2, :cond_2

    .line 1694
    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    if-eqz v2, :cond_3

    if-nez p3, :cond_3

    if-eq p2, v4, :cond_2

    const/16 v2, 0x14

    if-ne p2, v2, :cond_3

    .line 1697
    :cond_2
    invoke-direct {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cE(Z)V

    .line 1700
    :cond_3
    if-nez p1, :cond_a

    if-nez p3, :cond_a

    .line 1703
    invoke-direct {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cA(Z)V

    .line 1704
    invoke-direct {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cE(Z)V

    .line 1711
    :cond_4
    :goto_1
    return-void

    .line 1621
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cB(Z)V

    .line 1622
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqg:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 1628
    :pswitch_1
    if-ne p2, v5, :cond_6

    .line 1630
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asr()V

    .line 1631
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->setVisibility(I)V

    .line 1632
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->setVisibility(I)V

    .line 1635
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqa:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->atc()V

    .line 1637
    invoke-direct {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cB(Z)V

    .line 1639
    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqh:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1640
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->kC(I)V

    .line 1651
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->SM()V

    .line 1652
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 1643
    :cond_6
    if-ne p2, v4, :cond_5

    .line 1644
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->setVisibility(I)V

    .line 1645
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->setVisibility(I)V

    .line 1647
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cE(Z)V

    .line 1649
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cB(Z)V

    goto :goto_2

    .line 1661
    :cond_7
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1682
    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->SM()V

    .line 1684
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asV()V

    goto :goto_0

    .line 1665
    :pswitch_3
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->SM()V

    goto :goto_0

    .line 1669
    :pswitch_4
    const/16 v2, 0x14

    if-ne p2, v2, :cond_8

    .line 1671
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asV()V

    goto :goto_0

    .line 1672
    :cond_8
    if-ne p2, v5, :cond_9

    .line 1673
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->setVisibility(I)V

    goto/16 :goto_0

    .line 1674
    :cond_9
    if-ne p2, v4, :cond_0

    .line 1675
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->setVisibility(I)V

    goto/16 :goto_0

    .line 1705
    :cond_a
    if-eqz p3, :cond_4

    if-eq p2, v5, :cond_4

    .line 1708
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/widget/MMEditText;->length()I

    move-result v2

    if-lez v2, :cond_b

    :goto_3
    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cA(Z)V

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_3

    .line 1618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1661
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->kD(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cA(Z)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqj:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSL:Z

    return p1
.end method

.method private cA(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 324
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fql:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpX:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpX:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    .line 335
    :cond_3
    if-eqz p1, :cond_4

    .line 336
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpX:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 344
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    goto :goto_0

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpX:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private cB(Z)V
    .locals 2
    .parameter

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/widget/MMEditText;->requestFocus()Z

    .line 559
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aML:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 564
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/widget/MMEditText;->clearFocus()V

    .line 562
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aML:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private cE(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1830
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqB:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 1834
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqB:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    .line 1837
    :cond_3
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqB:Z

    .line 1839
    if-eqz p1, :cond_4

    .line 1840
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/h;->adk:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1842
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/h;->adm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqy:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqi:Z

    return p1
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cE(Z)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqA:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/pluginsdk/ui/chat/an;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqc:Lcom/tencent/mm/pluginsdk/ui/chat/an;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqE:Z

    return p1
.end method

.method static synthetic g(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V
    .locals 3
    .parameter

    .prologue
    .line 63
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/ab;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ab;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic h(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/pluginsdk/ui/chat/au;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqa:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpZ:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqh:I

    return v0
.end method

.method private kC(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1151
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqh:I

    .line 1153
    packed-switch p1, :pswitch_data_0

    .line 1164
    :goto_0
    return-void

    .line 1155
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpV:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1156
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1157
    sget v0, Lcom/tencent/mm/h;->adq:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->ky(I)V

    goto :goto_0

    .line 1161
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpV:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1163
    sget v0, Lcom/tencent/mm/h;->adp:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->ky(I)V

    goto :goto_0

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private kD(I)V
    .locals 2
    .parameter

    .prologue
    .line 1971
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1972
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1973
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1974
    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1975
    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1977
    :cond_1
    return-void
.end method

.method private ky(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpU:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpU:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 741
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpU:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/g;->aaL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/ImageButton;->setPadding(IIII)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/pluginsdk/ui/chat/bj;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/pluginsdk/model/app/bj;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqm:Lcom/tencent/mm/pluginsdk/model/app/bj;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 63
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqh:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpV:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->reset()V

    const/4 v0, 0x2

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(IIZ)V

    return-void
.end method

.method static synthetic p(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 63
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqh:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setMode(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setMode(I)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSL:Z

    return v0
.end method

.method static synthetic s(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqi:Z

    return v0
.end method

.method static synthetic t(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dlk:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dll:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqp:I

    return v0
.end method

.method static synthetic w(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)I
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqh:I

    return v0
.end method

.method static synthetic x(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpV:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic y(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v1, 0x8

    .line 63
    iput v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqh:I

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpV:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lcom/tencent/mm/h;->adq:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->ky(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cB(Z)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/u;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/u;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bn;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bc(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->kF(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->asr()V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/widget/MMEditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->ath()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->atg()V

    return-void
.end method

.method static synthetic z(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)Lcom/tencent/mm/ui/base/ce;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    return-object v0
.end method


# virtual methods
.method public final Oe()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1108
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 1110
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dli:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eMO:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dlj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1113
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dll:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dlk:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/mm/h;->ajN:I

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1118
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    sget v1, Lcom/tencent/mm/n;->bgz:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1119
    iput-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqi:Z

    .line 1120
    iput-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSL:Z

    .line 1121
    return-void
.end method

.method public final UY()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1596
    iput-boolean v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqA:Z

    .line 1597
    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(IIZ)V

    .line 1598
    return-void
.end method

.method public final a(Landroid/view/View$OnDragListener;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/widget/MMEditText;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1405
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/am;)V
    .locals 2
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

    .line 1508
    sget v0, Lcom/tencent/mm/i;->apk:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1509
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1510
    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/y;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/y;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1520
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/an;)V
    .locals 0
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqc:Lcom/tencent/mm/pluginsdk/ui/chat/an;

    .line 726
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/l;)V
    .locals 1
    .parameter

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->a(Lcom/tencent/mm/pluginsdk/ui/chat/l;)V

    .line 1433
    return-void
.end method

.method public final addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter

    .prologue
    .line 990
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/w;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/w;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Landroid/text/TextWatcher;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1050
    return-void
.end method

.method public final aqY()V
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->aqY()V

    .line 1352
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->aqY()V

    .line 1353
    return-void
.end method

.method public final asA()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1205
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpV:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpU:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1209
    return-void
.end method

.method public final asB()V
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->ask()V

    .line 1223
    return-void
.end method

.method public final asC()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asm()V

    .line 1246
    return-void
.end method

.method public final asD()V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asj()V

    .line 1250
    return-void
.end method

.method public final asE()V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asn()V

    .line 1254
    return-void
.end method

.method public final asF()V
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->apn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/o;

    invoke-direct {v1, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/o;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpY:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->ab(Landroid/view/View;)V

    .line 1258
    :cond_0
    return-void
.end method

.method public final asG()V
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpX:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1268
    return-void
.end method

.method public final asH()V
    .locals 2

    .prologue
    .line 1271
    const-string v0, "MicroMsg.ChatFooter"

    const-string v1, "chatting footer enable ener button send"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqj:Z

    .line 1274
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setImeOptions(I)V

    .line 1283
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/widget/MMEditText;->getInputType()I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setInputType(I)V

    .line 1301
    return-void
.end method

.method public final asI()V
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->ara()V

    .line 1340
    return-void
.end method

.method public final asJ()V
    .locals 1

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->ara()V

    .line 1344
    return-void
.end method

.method public final asK()V
    .locals 0

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asR()V

    .line 1368
    return-void
.end method

.method public final asL()Z
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpW:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final asM()V
    .locals 5

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->apq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpS:Landroid/widget/TextView;

    .line 1376
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1377
    return-void
.end method

.method public final asO()V
    .locals 0

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->UY()V

    .line 1553
    return-void
.end method

.method public final asP()V
    .locals 1

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->SM()V

    .line 1557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cB(Z)V

    .line 1558
    return-void
.end method

.method public final asQ()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1577
    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(IIZ)V

    .line 1578
    return-void
.end method

.method public final asR()V
    .locals 3

    .prologue
    .line 1581
    const/4 v0, 0x2

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(IIZ)V

    .line 1582
    return-void
.end method

.method public final asS()V
    .locals 3

    .prologue
    .line 1601
    const/4 v0, 0x2

    const/16 v1, 0x16

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(IIZ)V

    .line 1602
    return-void
.end method

.method public final asT()I
    .locals 1

    .prologue
    .line 1804
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->bc(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final asU()V
    .locals 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    if-eqz v0, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1877
    :cond_0
    return-void
.end method

.method public final ash()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->ash()V

    .line 1213
    return-void
.end method

.method public final asi()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asi()V

    .line 1218
    return-void
.end method

.method public final asl()V
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->asl()V

    .line 1227
    return-void
.end method

.method public final ast()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqf:Z

    return v0
.end method

.method public final asu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqe:Lcom/tencent/mm/pluginsdk/ui/chat/al;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/chat/al;->fqO:Ljava/lang/String;

    return-object v0
.end method

.method public final asv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqe:Lcom/tencent/mm/pluginsdk/ui/chat/al;

    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/ui/chat/al;->fqN:Ljava/lang/String;

    return-object v0
.end method

.method public final asw()I
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqe:Lcom/tencent/mm/pluginsdk/ui/chat/al;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/chat/al;->fqP:I

    return v0
.end method

.method public final asx()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 959
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 960
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpT:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/mm/h;->ajM:I

    invoke-static {v1, v2}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 961
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dlj:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dli:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eMO:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->update()V

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cST:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 969
    return-void
.end method

.method public final asy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/widget/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final asz()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eMO:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dli:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    return-void
.end method

.method public final b(Lcom/tencent/mm/pluginsdk/ui/aw;)V
    .locals 1
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->c(Lcom/tencent/mm/pluginsdk/ui/aw;)V

    .line 734
    return-void
.end method

.method public final b(Lcom/tencent/mm/pluginsdk/ui/chat/ar;)V
    .locals 1
    .parameter

    .prologue
    .line 729
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->a(Lcom/tencent/mm/pluginsdk/ui/chat/ar;)V

    .line 730
    return-void
.end method

.method public final b(Ljava/lang/String;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 939
    if-eqz p3, :cond_1

    .line 940
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    if-nez v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqf:Z

    .line 947
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/widget/MMEditText;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, p1, v2, v3}, Lcom/tencent/mm/ao/b;->b(Landroid/content/Context;Ljava/lang/String;IZ)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setText(Ljava/lang/CharSequence;)V

    .line 948
    iput-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqf:Z

    .line 949
    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/widget/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/widget/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setSelection(I)V

    goto :goto_0

    .line 952
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/widget/MMEditText;->setSelection(I)V

    goto :goto_0
.end method

.method public final cC(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->cz(Z)V

    .line 1242
    return-void
.end method

.method public final cD(Z)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 1529
    invoke-static {v1}, Lcom/tencent/mm/compatible/g/i;->bG(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/z;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/z;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Z)V

    invoke-static {v1, v0}, Lcom/tencent/mm/compatible/a/a;->a(ILcom/tencent/mm/compatible/a/b;)Z

    .line 1548
    :goto_0
    return-void

    .line 1540
    :cond_0
    if-eqz p1, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->aab:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setTextColor(I)V

    goto :goto_0

    .line 1543
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/mm/f;->ZV:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setTextColor(I)V

    .line 1545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cB(Z)V

    goto :goto_0
.end method

.method public final ci(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->ci(Z)V

    .line 1201
    return-void
.end method

.method public final cy(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->cy(Z)V

    .line 1238
    return-void
.end method

.method public final destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->aqZ()V

    .line 303
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->destroy()V

    .line 304
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqc:Lcom/tencent/mm/pluginsdk/ui/chat/an;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqc:Lcom/tencent/mm/pluginsdk/ui/chat/an;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/an;->release()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->a(Lcom/tencent/mm/pluginsdk/ui/chat/bi;)V

    .line 309
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->c(Lcom/tencent/mm/pluginsdk/ui/aw;)V

    .line 311
    :cond_1
    return-void
.end method

.method public final getMode()I
    .locals 1

    .prologue
    .line 1331
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqh:I

    return v0
.end method

.method public final kA(I)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1070
    iput v5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqp:I

    .line 1071
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->fromDPToPix(Landroid/content/Context;I)I

    move-result v0

    .line 1072
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4248

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v1

    .line 1073
    add-int v2, p1, v1

    if-ge v2, v0, :cond_2

    .line 1074
    iput v4, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqp:I

    .line 1080
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    if-nez v0, :cond_0

    .line 1081
    new-instance v0, Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tencent/mm/k;->bbl:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/mm/ui/base/ce;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    .line 1082
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->aOT:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSD:Landroid/widget/ImageView;

    .line 1083
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->aOU:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dlk:Landroid/view/View;

    .line 1084
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->aOW:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dll:Landroid/view/View;

    .line 1086
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->aOY:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eMM:Landroid/widget/TextView;

    .line 1087
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->aOX:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eMN:Landroid/widget/ImageView;

    .line 1088
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->aOZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eMO:Landroid/view/View;

    .line 1089
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->aPa:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dli:Landroid/view/View;

    .line 1090
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/tencent/mm/i;->aPb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dlj:Landroid/view/View;

    .line 1093
    :cond_0
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqp:I

    if-eq v0, v4, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dlj:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dli:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eMO:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    const/16 v1, 0x31

    iget v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqp:I

    invoke-virtual {v0, p0, v1, v5, v2}, Lcom/tencent/mm/ui/base/ce;->showAtLocation(Landroid/view/View;III)V

    .line 1099
    :cond_1
    return-void

    .line 1077
    :cond_2
    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqp:I

    goto/16 :goto_0
.end method

.method public final kB(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 1129
    move v0, v1

    :goto_0
    sget-object v2, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSw:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1130
    sget-object v2, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSv:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_2

    sget-object v2, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSv:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge p1, v2, :cond_2

    .line 1131
    iget-object v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSD:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cSw:[I

    aget v0, v4, v0

    invoke-static {v3, v0}, Lcom/tencent/mm/an/a;->k(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1136
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eML:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 1139
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eMO:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dli:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->dlj:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :cond_1
    return-void

    .line 1129
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final kz(I)V
    .locals 1
    .parameter

    .prologue
    .line 915
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqe:Lcom/tencent/mm/pluginsdk/ui/chat/al;

    iput p1, v0, Lcom/tencent/mm/pluginsdk/ui/chat/al;->fqP:I

    .line 916
    return-void
.end method

.method public final o(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->cw(Z)V

    .line 1232
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->cx(Z)V

    .line 1233
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1730
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1731
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqE:Z

    if-eqz v0, :cond_1

    .line 1801
    :cond_0
    :goto_0
    return-void

    .line 1737
    :cond_1
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    if-eq v0, p5, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqy:Z

    if-nez v0, :cond_2

    .line 1740
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    sub-int v1, p5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    .line 1742
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    invoke-static {v0, v1}, Lcom/tencent/mm/an/a;->n(Landroid/content/Context;I)I

    move-result v0

    .line 1744
    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->kT(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1745
    const-string v1, "MicroMsg.ChatFooter"

    const-string v2, "calc #wrong# keyBord dialog height:%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1771
    :cond_2
    :goto_1
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    if-ge v0, p5, :cond_8

    .line 1774
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asL()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1775
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/ae;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ae;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {p0, v0, v5, v6}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1788
    :cond_3
    :goto_2
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqx:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqx:I

    if-ge v0, p3, :cond_4

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    .line 1795
    :cond_4
    iput p3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqx:I

    .line 1796
    iput p5, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    .line 1798
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    if-eqz v0, :cond_0

    .line 1799
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->update()V

    goto :goto_0

    .line 1749
    :cond_5
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/tools/r;->h(Landroid/content/Context;I)Z

    .line 1751
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    if-eqz v0, :cond_6

    .line 1753
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpR:Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/AppPanel;->kx(I)V

    .line 1756
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    if-eqz v0, :cond_7

    .line 1758
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->kF(I)V

    .line 1761
    :cond_7
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    new-instance v1, Lcom/tencent/mm/pluginsdk/ui/chat/ac;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ac;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;I)V

    invoke-virtual {p0, v1, v5, v6}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1762
    iput-boolean v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqy:Z

    .line 1764
    const-string v0, "MicroMsg.ChatFooter"

    const-string v1, "jacks calc keyBord dialog height:%d"

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    iput v4, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqz:I

    goto :goto_1

    .line 1777
    :cond_8
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqw:I

    if-eq v0, p5, :cond_3

    .line 1780
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/chat/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/chat/aa;-><init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;)V

    invoke-virtual {p0, v0, v5, v6}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1813
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1815
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->onPause()V

    .line 291
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fpQ:Lcom/tencent/mm/pluginsdk/ui/chat/bj;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bj;->reset()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqc:Lcom/tencent/mm/pluginsdk/ui/chat/an;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/an;->onPause()V

    .line 295
    return-void
.end method

.method public final onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDX:Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->onResume()V

    .line 265
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fql:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqj:Z

    if-eqz v0, :cond_1

    .line 266
    iput-boolean v2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqj:Z

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/widget/MMEditText;->setImeOptions(I)V

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDV:Lcom/tencent/mm/ui/widget/MMEditText;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/widget/MMEditText;->getInputType()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/widget/MMEditText;->setInputType(I)V

    .line 274
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqa:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->atd()V

    .line 275
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fng:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->apm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asF()V

    .line 277
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqc:Lcom/tencent/mm/pluginsdk/ui/chat/an;

    invoke-interface {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/an;->onResume()V

    .line 280
    return-void

    .line 268
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fql:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqj:Z

    if-nez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asH()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1819
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 1821
    return-void
.end method

.method public final qI(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 907
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqe:Lcom/tencent/mm/pluginsdk/ui/chat/al;

    iput-object p1, v0, Lcom/tencent/mm/pluginsdk/ui/chat/al;->fqO:Ljava/lang/String;

    .line 908
    return-void
.end method

.method public final qJ(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 911
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqe:Lcom/tencent/mm/pluginsdk/ui/chat/al;

    iput-object p1, v0, Lcom/tencent/mm/pluginsdk/ui/chat/al;->fqN:Ljava/lang/String;

    .line 912
    return-void
.end method

.method public final qK(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 931
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(Ljava/lang/String;IZ)V

    .line 932
    return-void
.end method

.method public final qL(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 935
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(Ljava/lang/String;IZ)V

    .line 936
    return-void
.end method

.method public final qM(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->eDW:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqA:Z

    if-eqz v0, :cond_0

    .line 1869
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->fqb:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->qP(Ljava/lang/String;)V

    .line 1871
    :cond_0
    return-void
.end method

.method public final setMode(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1147
    invoke-direct {p0, p1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->kC(I)V

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    .line 1148
    :goto_0
    return-void

    .line 1147
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cB(Z)V

    invoke-direct {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asV()V

    invoke-virtual {p0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->UY()V

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(IIZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
