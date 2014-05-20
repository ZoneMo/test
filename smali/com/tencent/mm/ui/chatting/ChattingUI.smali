.class public Lcom/tencent/mm/ui/chatting/ChattingUI;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/ay;
.implements Lcom/tencent/mm/n/m;
.implements Lcom/tencent/mm/platformtools/w;
.implements Lcom/tencent/mm/pluginsdk/ai;
.implements Lcom/tencent/mm/pluginsdk/ao;
.implements Lcom/tencent/mm/sdk/e/al;
.implements Lcom/tencent/mm/sdk/e/ar;
.implements Lcom/tencent/mm/storage/ar;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field public static gOW:Z

.field public static gOa:Z


# instance fields
.field private cHU:Lcom/tencent/mm/ui/base/ch;

.field private cQb:Z

.field private cRp:Z

.field private cSY:Lcom/tencent/mm/p/a;

.field private cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

.field private final cYV:Lcom/tencent/mm/sdk/e/al;

.field protected dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

.field private dLA:Lcom/tencent/mm/ui/base/x;

.field private dLv:Lcom/tencent/mm/ui/base/cd;

.field private dYT:Landroid/view/View$OnCreateContextMenuListener;

.field private diX:Lcom/tencent/mm/ui/tools/dg;

.field private diw:Lcom/tencent/mm/ui/tools/eo;

.field private dkr:Landroid/text/ClipboardManager;

.field private final doi:Lcom/tencent/mm/sdk/e/al;

.field private dwS:Landroid/widget/ImageView;

.field private ePu:Lcom/tencent/mm/plugin/voicereminder/a/j;

.field private eSm:Lcom/tencent/mm/storage/i;

.field private edd:Lcom/tencent/mm/model/am;

.field private filePath:Ljava/lang/String;

.field private flR:Lcom/tencent/mm/sdk/b/g;

.field private final fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

.field protected gJU:Z

.field private gKI:Lcom/tencent/mm/ui/base/ce;

.field private gLo:Lcom/tencent/mm/storage/ca;

.field protected gMi:Lcom/tencent/mm/ui/chatting/es;

.field private gMj:Lcom/tencent/mm/ui/chatting/v;

.field private gMl:Ljava/lang/String;

.field protected gMn:Z

.field protected gMo:Z

.field private final gMp:Lcom/tencent/mm/ui/chatting/jx;

.field private gOF:Landroid/view/ViewGroup;

.field protected gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

.field private gOH:Ljava/util/ArrayList;

.field private gOI:Landroid/widget/ListView;

.field private gOJ:Lcom/tencent/mm/ui/base/x;

.field private gOK:Z

.field private gOL:Landroid/os/Handler;

.field private gOM:Z

.field private gON:Z

.field private gOO:Z

.field private gOP:I

.field protected gOQ:Landroid/widget/LinearLayout;

.field private gOR:Z

.field protected gOS:Z

.field private gOT:Z

.field private gOU:I

.field private final gOV:Lcom/tencent/mm/ui/bindqq/g;

.field protected gOX:Z

.field protected gOY:Z

.field protected gOZ:Ljava/util/Map;

.field private gOt:Lcom/tencent/mm/ui/chatting/fv;

.field private gOy:Z

.field private gPA:Lcom/tencent/mm/ui/c;

.field private gPB:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private gPC:Z

.field private gPD:Lcom/tencent/mm/c/a/r;

.field private gPE:Landroid/graphics/Bitmap;

.field private gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

.field private gPa:Landroid/view/View;

.field private gPb:Z

.field private gPc:Z

.field private gPd:Z

.field private gPe:Landroid/widget/TextView;

.field private gPf:Landroid/widget/ListView;

.field private gPg:Landroid/view/View;

.field private gPh:J

.field private gPi:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

.field private gPj:Lcom/tencent/mm/ui/chatting/fn;

.field private gPk:Z

.field private gPl:Z

.field private gPm:I

.field private gPn:Landroid/widget/RelativeLayout;

.field private gPo:Ljava/lang/String;

.field private gPp:Ljava/util/List;

.field private final gPq:Lcom/tencent/mm/ui/chatting/jv;

.field private final gPr:Lcom/tencent/mm/sdk/platformtools/ay;

.field private final gPs:Lcom/tencent/mm/sdk/e/al;

.field private gPt:Lcom/tencent/mm/sdk/b/g;

.field private final gPu:Lcom/tencent/mm/sdk/e/al;

.field private final gPv:Lcom/tencent/mm/sdk/e/al;

.field private final gPw:Lcom/tencent/mm/sdk/e/al;

.field gPx:Lcom/tencent/mm/ui/chatting/md;

.field gPy:Lcom/tencent/mm/ui/chatting/mg;

.field private gPz:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private glB:Z

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 313
    sput-boolean v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOa:Z

    .line 395
    sput-boolean v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 343
    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOJ:Lcom/tencent/mm/ui/base/x;

    .line 345
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOK:Z

    .line 346
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOL:Landroid/os/Handler;

    .line 350
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOM:Z

    .line 351
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gON:Z

    .line 352
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOO:Z

    .line 354
    new-instance v0, Lcom/tencent/mm/ui/chatting/fz;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/fz;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    .line 372
    iput v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOP:I

    .line 375
    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cHU:Lcom/tencent/mm/ui/base/ch;

    .line 377
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    .line 378
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOR:Z

    .line 379
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    .line 380
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    .line 381
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOS:Z

    .line 382
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOT:Z

    .line 385
    iput v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    .line 387
    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    .line 388
    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOV:Lcom/tencent/mm/ui/bindqq/g;

    .line 390
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    .line 396
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOX:Z

    .line 398
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    .line 399
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOZ:Ljava/util/Map;

    .line 408
    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    .line 409
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    .line 410
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    .line 411
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPc:Z

    .line 412
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPd:Z

    .line 419
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPh:J

    .line 421
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->glB:Z

    .line 425
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    .line 426
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPl:Z

    .line 427
    iput v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPm:I

    .line 435
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPp:Ljava/util/List;

    .line 461
    new-instance v0, Lcom/tencent/mm/ui/chatting/gk;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gk;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPq:Lcom/tencent/mm/ui/chatting/jv;

    .line 497
    new-instance v0, Lcom/tencent/mm/ui/chatting/gv;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gv;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

    .line 568
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/ay;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hv;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hv;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/sdk/platformtools/ay;-><init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPr:Lcom/tencent/mm/sdk/platformtools/ay;

    .line 577
    new-instance v0, Lcom/tencent/mm/ui/chatting/ij;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ij;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->ePu:Lcom/tencent/mm/plugin/voicereminder/a/j;

    .line 665
    new-instance v0, Lcom/tencent/mm/ui/chatting/iy;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/iy;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPs:Lcom/tencent/mm/sdk/e/al;

    .line 689
    new-instance v0, Lcom/tencent/mm/ui/chatting/ji;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ji;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cYV:Lcom/tencent/mm/sdk/e/al;

    .line 712
    new-instance v0, Lcom/tencent/mm/ui/chatting/ju;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ju;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->flR:Lcom/tencent/mm/sdk/b/g;

    .line 720
    new-instance v0, Lcom/tencent/mm/ui/chatting/ga;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ga;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPt:Lcom/tencent/mm/sdk/b/g;

    .line 736
    new-instance v0, Lcom/tencent/mm/ui/chatting/gb;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gb;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPu:Lcom/tencent/mm/sdk/e/al;

    .line 746
    new-instance v0, Lcom/tencent/mm/ui/chatting/gc;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gc;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPv:Lcom/tencent/mm/sdk/e/al;

    .line 754
    new-instance v0, Lcom/tencent/mm/ui/chatting/gd;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gd;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->doi:Lcom/tencent/mm/sdk/e/al;

    .line 762
    new-instance v0, Lcom/tencent/mm/ui/chatting/ge;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ge;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPw:Lcom/tencent/mm/sdk/e/al;

    .line 781
    new-instance v0, Lcom/tencent/mm/ui/chatting/md;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/md;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPx:Lcom/tencent/mm/ui/chatting/md;

    .line 782
    new-instance v0, Lcom/tencent/mm/ui/chatting/mg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/mg;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPy:Lcom/tencent/mm/ui/chatting/mg;

    .line 786
    new-instance v0, Lcom/tencent/mm/ui/chatting/gf;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gf;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPz:Landroid/os/Handler;

    .line 1157
    new-instance v0, Lcom/tencent/mm/ui/chatting/jx;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/jx;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMp:Lcom/tencent/mm/ui/chatting/jx;

    .line 1531
    new-instance v0, Lcom/tencent/mm/ui/chatting/gp;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gp;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPB:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 3383
    new-instance v0, Lcom/tencent/mm/ui/chatting/ih;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ih;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dLv:Lcom/tencent/mm/ui/base/cd;

    .line 3689
    new-instance v0, Lcom/tencent/mm/ui/chatting/in;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/in;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dYT:Landroid/view/View$OnCreateContextMenuListener;

    .line 4405
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cQb:Z

    .line 4766
    new-instance v0, Lcom/tencent/mm/c/a/r;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/r;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPD:Lcom/tencent/mm/c/a/r;

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJF()V

    return-void
.end method

.method static synthetic B(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/v;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    return-object v0
.end method

.method static synthetic C(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/text/ClipboardManager;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dkr:Landroid/text/ClipboardManager;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJH()Z

    move-result v0

    return v0
.end method

.method static synthetic E(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOH:Ljava/util/ArrayList;

    return-object v0
.end method

.method private E(Lcom/tencent/mm/storage/i;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    .line 2513
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    if-eqz v0, :cond_2

    .line 2514
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    .line 2584
    :cond_1
    :goto_0
    return-void

    .line 2518
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2521
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    if-eqz v0, :cond_5

    .line 2522
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v1

    .line 2523
    if-eqz v1, :cond_3

    iget-boolean v0, v1, Lcom/tencent/mm/p/f;->cnk:Z

    if-eqz v0, :cond_3

    .line 2524
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bizinfo name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is hide tool bar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    goto :goto_0

    .line 2529
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 2537
    iget v0, v1, Lcom/tencent/mm/p/f;->cnA:I

    packed-switch v0, :pswitch_data_0

    .line 2568
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    if-eqz v0, :cond_4

    .line 2569
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->setVisibility(I)V

    .line 2571
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    .line 2572
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bizinfo name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v4, v4}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->o(ZZ)V

    .line 2580
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cC(Z)V

    goto/16 :goto_0

    .line 2544
    :pswitch_0
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bizinfo name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is show custom menu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    const v0, 0x7f0a01af

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nB(I)V

    .line 2551
    const v0, 0x7f0a01c6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    .line 2552
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->D(Lcom/tencent/mm/storage/i;)V

    .line 2554
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->FR()V

    .line 2555
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOF:Landroid/view/ViewGroup;

    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnr:Lcom/tencent/mm/p/g;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->a(Landroid/view/ViewGroup;Lcom/tencent/mm/p/g;Ljava/lang/String;)V

    .line 2556
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->a(Lcom/tencent/mm/pluginsdk/ui/chat/am;)V

    .line 2557
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPq:Lcom/tencent/mm/ui/chatting/jv;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->a(Lcom/tencent/mm/ui/chatting/jv;)V

    .line 2558
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->a(Lcom/tencent/mm/pluginsdk/ui/chat/am;)V

    .line 2559
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->setVisibility(I)V

    .line 2560
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2562
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->fqd:Lcom/tencent/mm/pluginsdk/ui/chat/am;

    invoke-interface {v0, v4}, Lcom/tencent/mm/pluginsdk/ui/chat/am;->cF(Z)Z

    goto :goto_1

    .line 2537
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic F(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/ch;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cHU:Lcom/tencent/mm/ui/base/ch;

    return-object v0
.end method

.method static synthetic G(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/ch;
    .locals 1
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cHU:Lcom/tencent/mm/ui/base/ch;

    return-object v0
.end method

.method static synthetic H(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    return-void
.end method

.method static synthetic I(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 250
    const/4 v0, 0x0

    new-instance v2, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v2}, Lcom/tencent/mm/c/a/gy;-><init>()V

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v1, v3, Lcom/tencent/mm/c/a/gz;->bQU:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v2, v2, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v2, v2, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const v0, 0x7f070b2d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tencent/mm/pluginsdk/ap;->kn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tencent/mm/pluginsdk/ap;->kl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    const v0, 0x7f0708d7

    new-instance v2, Lcom/tencent/mm/ui/chatting/jd;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/jd;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    :goto_2
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/mm/pluginsdk/aj;->oZ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f070b2e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "fromPluginLocation"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->wF(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method static synthetic J(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/r;->cb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070b29

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/gz;->bQU:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJX()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/gz;->bQV:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJX()V

    goto :goto_0
.end method

.method static synthetic K(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic L(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPp:Ljava/util/List;

    return-object v0
.end method

.method static synthetic M(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/c;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPA:Lcom/tencent/mm/ui/c;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPn:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/i;)Lcom/tencent/mm/storage/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/ui/base/x;)Lcom/tencent/mm/ui/base/x;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dLA:Lcom/tencent/mm/ui/base/x;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->filePath:Ljava/lang/String;

    return-object p1
.end method

.method private a(IIILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    .line 4883
    if-eqz p4, :cond_0

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4884
    :cond_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, " doSendImage : filePath is null or empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4913
    :goto_0
    return-void

    .line 4888
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4889
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->aDk()Lcom/tencent/mm/storage/cb;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_2
    const v0, 0x7f07006d

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/f/a;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4901
    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJH()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4902
    new-instance v0, Lcom/tencent/mm/s/c;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    move v1, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/s/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4903
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0

    .line 4907
    :cond_4
    new-instance v0, Lcom/tencent/mm/w/y;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const-string v8, ""

    const-string v9, ""

    move v1, p2

    move-object v4, p4

    move v5, p1

    move v7, p3

    invoke-direct/range {v0 .. v9}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/mm/n/n;ILjava/lang/String;Ljava/lang/String;)V

    .line 4908
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 4912
    invoke-virtual {p0, v10}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->k(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 250
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "filelist is empty!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "CropImage_Compress_Img"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v0, "from_source"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v0, "CropImage_rotateCount"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dkimgsource"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "from_source"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->aDk()Lcom/tencent/mm/storage/cb;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_3
    const v0, 0x7f07006d

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/f/a;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJH()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "MicroMsg.ChattingUI"

    const-string v2, " doSendImage : filePath is null or empty"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/tencent/mm/s/c;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/s/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/tencent/mm/w/ag;->AY()Lcom/tencent/mm/w/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/w/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;IZ)V

    invoke-virtual {p0, v7}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/iz;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/iz;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private aIS()V
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gKI:Lcom/tencent/mm/ui/base/ce;

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gKI:Lcom/tencent/mm/ui/base/ce;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ce;->dismiss()V

    .line 1494
    :cond_0
    return-void
.end method

.method private aJA()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 1817
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-nez v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->co(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1819
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0229

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6, v7}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Lcom/tencent/mm/ui/chatting/ha;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ha;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a022a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/chatting/hb;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/chatting/hb;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v2, 0x2afc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1821
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1823
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJB()V

    goto :goto_0
.end method

.method private aJB()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2038
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2073
    :cond_0
    :goto_0
    return-void

    .line 2041
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2042
    invoke-static {}, Lcom/tencent/mm/model/s;->te()Lcom/tencent/mm/model/s;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/s;->ck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/s;->te()Lcom/tencent/mm/model/s;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/s;->ck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2045
    const v1, 0x7f0a022b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dwS:Landroid/widget/ImageView;

    .line 2046
    new-instance v1, Lcom/tencent/mm/ui/chatting/hd;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hd;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2068
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dwS:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/tencent/mm/m/c;->a(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2069
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2071
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2afb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private aJF()V
    .locals 6

    .prologue
    .line 2954
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/ap;->aa(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2955
    const v0, 0x7f070b2c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0709bb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/chatting/ib;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/chatting/ib;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    new-instance v5, Lcom/tencent/mm/ui/chatting/ic;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/chatting/ic;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 2973
    :goto_0
    return-void

    .line 2971
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJG()V

    goto :goto_0
.end method

.method private aJH()Z
    .locals 2

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aJR()V
    .locals 1

    .prologue
    .line 5062
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPE:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 5063
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPE:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5065
    :cond_0
    return-void
.end method

.method private aJS()I
    .locals 2

    .prologue
    .line 5068
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method private aJT()V
    .locals 8

    .prologue
    const v1, 0x7f02015b

    const/4 v2, -0x1

    const/4 v7, -0x2

    const v6, 0x7f0a00bc

    .line 5077
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    if-nez v0, :cond_1

    .line 5078
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "initBackground, adapter is not initialized properly"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5151
    :cond_0
    :goto_0
    return-void

    .line 5082
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ab/r;->BN()Lcom/tencent/mm/ab/b;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ab/b;->gc(Ljava/lang/String;)Lcom/tencent/mm/ab/a;

    move-result-object v3

    .line 5086
    if-nez v3, :cond_2

    .line 5089
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v4, 0x3017

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5099
    :goto_1
    if-ne v0, v7, :cond_4

    .line 5100
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setBackgroundColor(I)V

    .line 5101
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    if-nez v0, :cond_3

    .line 5102
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->finish()V

    goto :goto_0

    .line 5095
    :cond_2
    invoke-virtual {v3}, Lcom/tencent/mm/ab/a;->BC()I

    move-result v0

    goto :goto_1

    .line 5105
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    const-string v1, "chatting/purecolor_chat.xml"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/ui/chatting/es;->ap(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 5109
    :cond_4
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    invoke-static {p0}, Lcom/tencent/mm/ab/l;->P(Landroid/content/Context;)I

    move-result v4

    .line 5110
    if-nez v0, :cond_6

    .line 5113
    packed-switch v4, :pswitch_data_0

    move v0, v2

    .line 5119
    :goto_2
    if-eq v0, v2, :cond_0

    .line 5125
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJR()V

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02015b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPE:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPE:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "setBackground decodeFile fail, bm is null, resId = 2130837851"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5126
    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    const-string v1, "chatting/reserved_chat.xml"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/ui/chatting/es;->ap(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_0
    move v0, v1

    .line 5118
    goto :goto_2

    .line 5125
    :cond_5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPE:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 5131
    :cond_6
    invoke-static {}, Lcom/tencent/mm/ab/r;->BM()Lcom/tencent/mm/ab/l;

    move-result-object v1

    .line 5134
    if-lez v0, :cond_7

    .line 5135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mm/ab/l;->J(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chat.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5136
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/ui/chatting/es;->wB(Ljava/lang/String;)Z

    .line 5140
    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/ab/l;->K(II)Ljava/lang/String;

    move-result-object v0

    .line 5150
    :goto_5
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJR()V

    invoke-static {v0}, Lcom/tencent/mm/platformtools/v;->hN(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPE:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPE:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setBackground decodeFile fail, bm is null, path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJS()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 5142
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    const-string v2, "chatting/default_chat.xml"

    invoke-virtual {v0, p0, v2}, Lcom/tencent/mm/ui/chatting/es;->ap(Landroid/content/Context;Ljava/lang/String;)Z

    .line 5143
    if-nez v3, :cond_8

    .line 5144
    const-string v0, "default"

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/ab/l;->u(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 5146
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/ab/l;->u(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 5150
    :cond_9
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPE:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 5113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private aJV()V
    .locals 2

    .prologue
    .line 5249
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    if-nez v0, :cond_0

    .line 5251
    const v0, 0x7f0a01aa

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nB(I)V

    .line 5252
    const v0, 0x7f0a0894

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    .line 5254
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    new-instance v1, Lcom/tencent/mm/ui/chatting/jh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/jh;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->a(Lcom/tencent/mm/ui/base/ei;)V

    .line 5278
    :cond_0
    return-void
.end method

.method private aJX()V
    .locals 2

    .prologue
    .line 5531
    const-string v0, "fromBanner"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->P(Ljava/lang/String;Z)V

    .line 5533
    return-void
.end method

.method private aJw()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1161
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    const-string v0, "MicroMsg.ChattingUI"

    const-string v3, "trigger title icon, in show mode"

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->m(IZ)V

    .line 1164
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mm(I)V

    .line 1165
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mG(I)V

    .line 1182
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rf()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1170
    :cond_2
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mG(I)V

    .line 1175
    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x1a

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1176
    if-nez v0, :cond_4

    .line 1177
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    .line 1181
    :goto_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mm(I)V

    goto :goto_0

    .line 1172
    :cond_3
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mG(I)V

    goto :goto_1

    .line 1179
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1181
    goto :goto_3
.end method

.method private aKa()V
    .locals 1

    .prologue
    .line 5752
    new-instance v0, Lcom/tencent/mm/ui/chatting/jt;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/jt;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/an;->i(Ljava/lang/Runnable;)V

    .line 5763
    return-void
.end method

.method public static aKb()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5781
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v2, 0x4b

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static aKc()V
    .locals 3

    .prologue
    .line 5786
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x4b

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 5788
    return-void
.end method

.method private au(Ljava/lang/String;I)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4769
    .line 4770
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 4771
    :cond_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v2, "doSendMessage null"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4836
    :cond_1
    :goto_0
    return v0

    .line 4776
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMp:Lcom/tencent/mm/ui/chatting/jx;

    invoke-virtual {v2, p1, v0}, Lcom/tencent/mm/ui/chatting/jx;->Q(Ljava/lang/String;Z)Z

    .line 4781
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPD:Lcom/tencent/mm/c/a/r;

    iget-object v2, v2, Lcom/tencent/mm/c/a/r;->bMe:Lcom/tencent/mm/c/a/s;

    iput-object p1, v2, Lcom/tencent/mm/c/a/s;->bMg:Ljava/lang/String;

    .line 4782
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPD:Lcom/tencent/mm/c/a/r;

    iget-object v2, v2, Lcom/tencent/mm/c/a/r;->bMe:Lcom/tencent/mm/c/a/s;

    iput-object p0, v2, Lcom/tencent/mm/c/a/s;->context:Landroid/content/Context;

    .line 4783
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPD:Lcom/tencent/mm/c/a/r;

    invoke-interface {v2, v3}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 4784
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPD:Lcom/tencent/mm/c/a/r;

    iget-object v2, v2, Lcom/tencent/mm/c/a/r;->bMf:Lcom/tencent/mm/c/a/t;

    iget-boolean v2, v2, Lcom/tencent/mm/c/a/t;->bMh:Z

    if-nez v2, :cond_1

    .line 4788
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    if-eqz v2, :cond_6

    .line 4789
    const/4 v2, 0x0

    .line 4790
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ca;->aDk()Lcom/tencent/mm/storage/cb;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4791
    const-string v4, "@t.qq.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4792
    const v2, 0x7f07006e

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4801
    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    .line 4802
    const v0, 0x7f0709bb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    .line 4803
    goto :goto_0

    .line 4794
    :cond_4
    const-string v4, "@qqim"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_5

    .line 4795
    const v2, 0x7f07006f

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4797
    :cond_5
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4798
    const v2, 0x7f07006d

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/f/a;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 4807
    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/mm/ui/chatting/jf;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/mm/ui/chatting/jf;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4835
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->t(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    iget-object v3, v0, Lcom/tencent/mm/storage/i;->field_username:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v4

    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v6

    new-instance v0, Lcom/tencent/mm/ui/chatting/io;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/io;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->pc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOK:Z

    return v0
.end method

.method private bd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3181
    new-instance v0, Lcom/tencent/mm/ui/chatting/ig;

    invoke-direct {v0, p0, p2}, Lcom/tencent/mm/ui/chatting/ig;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)V

    .line 3195
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aIS()V

    .line 3196
    invoke-static {p0, v1, p1, v1, v0}, Lcom/tencent/mm/ui/base/dn;->a(Landroid/app/Activity;ILjava/lang/String;ZLandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gKI:Lcom/tencent/mm/ui/base/ce;

    .line 3198
    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOK:Z

    return v0
.end method

.method private cg(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4715
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doSendMessage failed  msgId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ca;->aDk()Lcom/tencent/mm/storage/cb;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@t.qq.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v4

    if-nez v4, :cond_2

    const v2, 0x7f07006e

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    :cond_2
    const-string v4, "@qqim"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_3

    const v2, 0x7f07006f

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v3

    if-nez v3, :cond_1

    const v2, 0x7f07006d

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/f/a;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/mm/ui/chatting/je;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/mm/ui/chatting/je;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;J)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOM:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gON:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOO:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPn:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private goBack()V
    .locals 4

    .prologue
    .line 2940
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aEO()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2941
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/chatting/ia;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ia;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2950
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->SM()V

    .line 2951
    return-void

    .line 2948
    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJF()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    const v0, 0x7f0a01a7

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nB(I)V

    return-void
.end method

.method static synthetic i(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    return-object v0
.end method

.method private k(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 4287
    new-instance v0, Lcom/tencent/mm/ai/a;

    invoke-direct {v0}, Lcom/tencent/mm/ai/a;-><init>()V

    .line 4288
    new-instance v1, Lcom/tencent/mm/ui/chatting/iw;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/iw;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/tencent/mm/ai/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/mm/ai/c;)V

    .line 4307
    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    const v1, 0x7f0709ee

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/chatting/ix;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/ui/chatting/ix;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/ai/a;)V

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cHU:Lcom/tencent/mm/ui/base/ch;

    .line 4313
    return-void
.end method

.method static synthetic k(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asI()V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/storage/i;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJT()V

    return-void
.end method

.method static synthetic n(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJB()V

    return-void
.end method

.method private nB(I)V
    .locals 1
    .parameter

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 452
    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 455
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/p/a;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aEQ()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "Actionbar customView onclick screen not enable"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->goBack()V

    goto :goto_0
.end method

.method private pc(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 5575
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5576
    const-string v1, "enter_room_username"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5577
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5580
    const-string v1, "talkroom"

    const-string v2, ".ui.TalkRoomUI"

    invoke-static {p0, v1, v2, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 5581
    return-void
.end method

.method static synthetic q(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 250
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPC:Z

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "Jacks Show auto Display name tips"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f07025a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "room_msg_show_username"

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->bd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPC:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rS()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->ry()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOP:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_0

    const v1, 0x7f070259

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "room_notify_new_msg"

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->bd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/n;->cb(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/MMPullDownView;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    return v0
.end method

.method private setBackgroundColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 5154
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJR()V

    .line 5156
    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5157
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5158
    return-void
.end method

.method private t(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 4248
    invoke-static {p0}, Lcom/tencent/mm/network/bm;->ac(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4249
    const v0, 0x7f0705fe

    const v1, 0x7f0709bb

    new-instance v2, Lcom/tencent/mm/ui/chatting/iv;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/ui/chatting/iv;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/content/Intent;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 4261
    :goto_0
    return-void

    .line 4259
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->k(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPd:Z

    return v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/fn;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/fv;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPd:Z

    return v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPc:Z

    return v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/chatting/ChattingUI;)I
    .locals 2
    .parameter

    .prologue
    .line 250
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    return v0
.end method

.method static synthetic z(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dLA:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method


# virtual methods
.method public final Ch()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4840
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "getSender "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4841
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 4840
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4841
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method protected final FR()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1541
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Chat_User"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    .line 1542
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finish_direct"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOS:Z

    .line 1543
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "search_chat_content"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    .line 1544
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_search_chat_content_result"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    .line 1545
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_global_search"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPc:Z

    .line 1547
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isFromSearch  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    .line 1549
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/i;

    invoke-direct {v0}, Lcom/tencent/mm/storage/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/i;->setUsername(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->qJ()V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/i;->bU(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/k;->A(Lcom/tencent/mm/storage/i;)Z

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    .line 1550
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/p/p;->eI(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    .line 1551
    new-instance v0, Lcom/tencent/mm/ui/chatting/v;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/chatting/v;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    .line 1553
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x4003

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v8}, Lcom/tencent/mm/platformtools/au;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1554
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/v;->dG(Z)V

    .line 1555
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    if-eqz v0, :cond_2

    .line 1556
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v0

    .line 1557
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/tencent/mm/p/f;->cnw:Z

    if-eqz v0, :cond_2

    .line 1558
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIJ()V

    .line 1562
    :cond_2
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dkr:Landroid/text/ClipboardManager;

    .line 1564
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 1567
    if-eqz v0, :cond_3

    .line 1568
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOP:I

    .line 1569
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rP()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    .line 1571
    :cond_3
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "dkcm init old:%d   "

    new-array v2, v8, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1573
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1574
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/tencent/mm/plugin/webwx/a/b;->E(Ljava/lang/String;Z)V

    .line 1577
    :cond_4
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new RoleInfo.Parser(getTalkerUserName())"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/storage/cb;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/cb;-><init>(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sz()Lcom/tencent/mm/storage/cc;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/cb;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/storage/cb;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/cc;->vB(Ljava/lang/String;)Lcom/tencent/mm/storage/ca;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    .line 1579
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    .line 1580
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cq(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    .line 1582
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-eqz v0, :cond_e

    :cond_5
    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    .line 1584
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-nez v0, :cond_f

    .line 1586
    invoke-static {v9}, Lcom/tencent/mm/plugin/b;->eS(I)V

    .line 1593
    :goto_1
    const v0, 0x7f0a01a4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOF:Landroid/view/ViewGroup;

    .line 1596
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    if-eqz v0, :cond_10

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v10}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    .line 1598
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->E(Lcom/tencent/mm/storage/i;)V

    .line 1600
    const v0, 0x7f0a01a6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    const v0, 0x7f0a01a5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/base/MMPullDownView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hq;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hq;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMPullDownView;->a(Lcom/tencent/mm/ui/base/cn;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hr;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hr;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMPullDownView;->a(Lcom/tencent/mm/ui/base/cl;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/base/MMPullDownView;->dv(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hs;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hs;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMPullDownView;->a(Lcom/tencent/mm/ui/base/cj;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ht;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ht;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMPullDownView;->a(Lcom/tencent/mm/ui/base/ck;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/base/MMPullDownView;->dt(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/MMPullDownView;->du(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hu;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hu;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/tencent/mm/ui/chatting/es;

    new-instance v2, Lcom/tencent/mm/storage/ak;

    invoke-direct {v2}, Lcom/tencent/mm/storage/ak;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dYT:Landroid/view/View$OnCreateContextMenuListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/es;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/ak;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/chatting/v;Landroid/view/View$OnCreateContextMenuListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aEJ()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/es;->c(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPc:Z

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "msg_local_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/ui/chatting/es;->cd(J)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    new-instance v4, Lcom/tencent/mm/ui/chatting/gu;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/tencent/mm/ui/chatting/gu;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;JI)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    new-instance v1, Lcom/tencent/mm/ui/chatting/gw;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/gw;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/es;->a(Lcom/tencent/mm/ui/bd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOQ:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJA()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setTranscriptMode(I)V

    invoke-virtual {p0, v8}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/gy;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/gy;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/gz;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/gz;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->registerForContextMenu(Landroid/view/View;)V

    .line 1602
    new-instance v0, Lcom/tencent/mm/ui/chatting/bv;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/bv;-><init>(Landroid/widget/ListView;Lcom/tencent/mm/ui/chatting/es;Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Lcom/tencent/mm/ui/chatting/v;Ljava/lang/String;)V

    .line 1603
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->a(Lcom/tencent/mm/pluginsdk/ui/chat/an;)V

    .line 1604
    new-instance v0, Lcom/tencent/mm/ui/chatting/fy;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/mm/ui/chatting/fy;-><init>(Landroid/content/Context;Lcom/tencent/mm/storage/i;Ljava/lang/String;)V

    .line 1605
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(Lcom/tencent/mm/pluginsdk/ui/chat/ar;)V

    .line 1606
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(Lcom/tencent/mm/pluginsdk/ui/aw;)V

    .line 1609
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x28d7

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    const v0, 0x7f0a01ab

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nB(I)V

    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPa:Landroid/view/View;

    const v0, 0x7f0a0712

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/chatting/he;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/he;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPe:Landroid/widget/TextView;

    if-nez v0, :cond_9

    const v0, 0x7f0a01a8

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nB(I)V

    const v0, 0x7f0a022f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPe:Landroid/widget/TextView;

    :cond_9
    new-instance v0, Lcom/tencent/mm/ui/chatting/fv;

    new-instance v2, Lcom/tencent/mm/storage/ak;

    invoke-direct {v2}, Lcom/tencent/mm/storage/ak;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/fv;-><init>(Landroid/content/Context;Lcom/tencent/mm/storage/ak;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hf;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hf;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/fv;->a(Lcom/tencent/mm/ui/chatting/fw;)V

    const v0, 0x7f0a0711

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hg;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hh;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/tencent/mm/ui/tools/eo;

    invoke-direct {v0}, Lcom/tencent/mm/ui/tools/eo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hj;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hj;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/eo;->a(Lcom/tencent/mm/ui/tools/ez;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {p0, v8, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(ZLcom/tencent/mm/ui/tools/eo;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->diw:Lcom/tencent/mm/ui/tools/eo;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/eo;->aND()V

    .line 1611
    :cond_a
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJz()V

    .line 1613
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v0, :cond_2b

    .line 1614
    sput v8, Lcom/tencent/mm/af/c;->cxX:I

    .line 1620
    :goto_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJI()V

    .line 1621
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPB:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 1623
    new-instance v0, Lcom/tencent/mm/ui/chatting/gq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gq;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 1631
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rS()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_2d

    :cond_b
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "jacks ont need auto display name because : already tips"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/gr;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/gr;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1640
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1641
    invoke-static {}, Lcom/tencent/mm/p/ab;->yh()Lcom/tencent/mm/p/r;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/p/r;->eK(Ljava/lang/String;)V

    .line 1646
    :cond_d
    return-void

    :cond_e
    move v0, v7

    .line 1582
    goto/16 :goto_0

    .line 1588
    :cond_f
    new-instance v0, Lcom/tencent/mm/c/a/da;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/da;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    const/4 v2, 0x4

    iput v2, v1, Lcom/tencent/mm/c/a/db;->bOd:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto/16 :goto_1

    .line 1596
    :cond_10
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_11
    move v0, v8

    :goto_6
    invoke-virtual {v2, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setMode(I)V

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cz(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/tencent/mm/model/w;->tP()Z

    :goto_7
    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asB()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asC()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asE()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asi()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asl()V

    :cond_12
    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asB()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asC()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asE()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asi()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asl()V

    :cond_13
    invoke-static {v1}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asB()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asC()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asE()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asi()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asA()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asl()V

    :cond_14
    invoke-static {v1}, Lcom/tencent/mm/model/w;->cK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asB()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asC()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asE()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asl()V

    :cond_15
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asE()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asB()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asC()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asD()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asi()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v8, v8}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->o(ZZ)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asF()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asG()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asl()V

    :cond_16
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const v2, 0x10510

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asH()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asF()V

    :cond_17
    invoke-static {v1}, Lcom/tencent/mm/model/w;->cH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asB()V

    :cond_18
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asB()V

    :cond_19
    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cK(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_1a
    move v0, v8

    :goto_8
    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-nez v1, :cond_1b

    if-eqz v0, :cond_26

    :cond_1b
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v1, v8, v8}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->o(ZZ)V

    :goto_9
    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cC(Z)V

    :goto_a
    if-eqz v2, :cond_1c

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->ash()V

    :cond_1c
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    invoke-static {}, Lcom/tencent/mm/x/b;->Bc()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v0

    const/high16 v2, 0x200

    and-int/2addr v0, v2

    if-eqz v0, :cond_29

    :cond_1d
    move v0, v8

    :goto_b
    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cy(Z)V

    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    const-string v0, "location"

    invoke-static {v0}, Lcom/tencent/mm/ak/a;->qc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asC()V

    :cond_1e
    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->ci(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hw;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hw;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_2

    :cond_1f
    invoke-static {v1}, Lcom/tencent/mm/model/w;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v9

    goto/16 :goto_6

    :cond_20
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "Chat_Mode"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "MicroMsg.ChattingUI"

    const-string v4, "dkcm getChatMode old:%d intent:%d "

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    if-eqz v3, :cond_21

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    :cond_21
    if-nez v0, :cond_22

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/e;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_22
    if-nez v0, :cond_23

    move v0, v8

    :cond_23
    const-string v3, "MicroMsg.ChattingUI"

    const-string v4, "dkcm getChatMode old:%d intent:%d "

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_24
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v10}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    goto/16 :goto_7

    :cond_25
    move v0, v7

    goto/16 :goto_8

    :cond_26
    invoke-static {}, Lcom/tencent/mm/model/v;->tq()I

    move-result v1

    const/high16 v3, 0x40

    and-int/2addr v1, v3

    if-eqz v1, :cond_27

    move v1, v8

    :goto_c
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v3, v7, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->o(ZZ)V

    goto/16 :goto_9

    :cond_27
    move v1, v7

    goto :goto_c

    :cond_28
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-static {}, Lcom/tencent/mm/ak/a;->avr()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->cC(Z)V

    goto/16 :goto_a

    :cond_29
    move v0, v7

    goto/16 :goto_b

    .line 1600
    :cond_2a
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setTranscriptMode(I)V

    goto/16 :goto_3

    .line 1615
    :cond_2b
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1616
    sput v9, Lcom/tencent/mm/af/c;->cxX:I

    goto/16 :goto_4

    .line 1618
    :cond_2c
    sput v7, Lcom/tencent/mm/af/c;->cxX:I

    goto/16 :goto_4

    .line 1631
    :cond_2d
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/tencent/mm/storage/b;->aAe()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_2f

    :cond_2e
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "jacks ont need auto display name because : member nums too few"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_2f
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/tencent/mm/storage/b;->aAk()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "MicroMsg.ChattingUI"

    const-string v3, "jacks need auto display name"

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPC:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v8}, Lcom/tencent/mm/ui/RoomInfoUI;->a(Ljava/lang/String;Lcom/tencent/mm/storage/b;Z)V

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/n;->cb(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method final H(Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2864
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 2865
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    if-nez v2, :cond_0

    .line 2866
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2868
    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/j/b;->bR(Ljava/lang/String;)Lcom/tencent/mm/j/b;

    move-result-object v2

    .line 2869
    iget-object v0, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/tencent/mm/pluginsdk/model/app/l;->F(Ljava/lang/String;Z)Lcom/tencent/mm/pluginsdk/model/app/k;

    move-result-object v3

    .line 2871
    if-eqz v3, :cond_5

    iget-object v0, v3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/pluginsdk/model/app/u;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2873
    iget v0, v3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    if-ne v0, v7, :cond_1

    .line 2874
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestAppShow fail, app is in blacklist, packageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2910
    :goto_0
    return-void

    .line 2878
    :cond_1
    invoke-static {p0, v3}, Lcom/tencent/mm/pluginsdk/model/app/u;->e(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/model/app/k;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2879
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "The app %s signature is incorrect."

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, v3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_appName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2880
    const v0, 0x7f070849

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/tencent/mm/pluginsdk/model/app/l;->c(Landroid/content/Context;Lcom/tencent/mm/pluginsdk/model/app/k;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2883
    :cond_2
    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;-><init>()V

    .line 2884
    iget-object v0, v2, Lcom/tencent/mm/j/b;->extInfo:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 2886
    iget-object v0, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2887
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v0

    iget-object v5, v2, Lcom/tencent/mm/j/b;->cgE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/model/app/b;->qk(Ljava/lang/String;)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v0

    .line 2888
    if-nez v0, :cond_4

    move-object v0, v1

    :goto_1
    iput-object v0, v4, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->filePath:Ljava/lang/String;

    .line 2891
    :cond_3
    new-instance v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>()V

    .line 2892
    const v1, 0x22010003

    iput v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->sdkVer:I

    .line 2893
    iput-object v4, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/p;

    .line 2894
    iget-object v1, v2, Lcom/tencent/mm/j/b;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 2895
    iget-object v1, v2, Lcom/tencent/mm/j/b;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 2896
    iget-object v1, v2, Lcom/tencent/mm/j/b;->messageAction:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->messageAction:Ljava/lang/String;

    .line 2897
    iget-object v1, v2, Lcom/tencent/mm/j/b;->messageExt:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    .line 2898
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/w/g;->fW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2899
    const/4 v2, -0x1

    invoke-static {v1, v6, v2}, Lcom/tencent/mm/a/c;->g(Ljava/lang/String;II)[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 2901
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPy:Lcom/tencent/mm/ui/chatting/mg;

    iget-object v2, v3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    iget-object v3, v3, Lcom/tencent/mm/pluginsdk/model/app/k;->field_openId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/mm/ui/chatting/mg;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2888
    :cond_4
    iget-object v0, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_fileFullPath:Ljava/lang/String;

    goto :goto_1

    .line 2905
    :cond_5
    iget-object v2, v2, Lcom/tencent/mm/j/b;->appId:Ljava/lang/String;

    const-string v3, "message"

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    const-string v0, "MicroMsg.AppUtil"

    const-string v2, "buildUnistallUrl fail, invalid arguments"

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2907
    const-string v2, "rawUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2908
    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2909
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2905
    :cond_7
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/z;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    const-string v0, "zh_CN"

    :cond_9
    :goto_3
    sget v1, Lcom/tencent/mm/n;->bsr:I

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    sget v2, Lcom/tencent/mm/protocal/a;->fxr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v0, v4, v2

    sget-object v0, Lcom/tencent/mm/protocal/a;->fxk:Ljava/lang/String;

    aput-object v0, v4, v7

    const/4 v0, 0x4

    aput-object v3, v4, v0

    const/4 v0, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_a
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "en_US"

    goto :goto_3
.end method

.method final I(Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter

    .prologue
    .line 3828
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-nez v0, :cond_1

    .line 3829
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPi:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    if-nez v0, :cond_0

    .line 3830
    const v0, 0x7f0a01b0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nB(I)V

    .line 3831
    const v0, 0x7f0a0230

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPi:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    .line 3834
    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/chatting/fn;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPi:Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    iget-boolean v7, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/ui/chatting/fn;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/ui/chatting/ChattingFooterMoreBtnBar;Lcom/tencent/mm/ui/chatting/es;Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Lcom/tencent/mm/ui/chatting/ChatFooterCustom;Lcom/tencent/mm/storage/i;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    .line 3836
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;Lcom/tencent/mm/ui/chatting/ChatFooterCustom;)V

    .line 3837
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/fn;->E(Lcom/tencent/mm/storage/ak;)V

    .line 3838
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPd:Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/fn;->dK(Z)V

    .line 3839
    return-void
.end method

.method final J(Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 3843
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/v;->aIO()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 3844
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    .line 3846
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3847
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/bd;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/bd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 3850
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cQ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3851
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/voicereminder/a/n;->jp(I)Z

    .line 3855
    :cond_2
    :goto_0
    return-void

    .line 3853
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Er()Lcom/tencent/mm/modelvoice/br;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelvoice/br;->hB(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/bh;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/bh;->setStatus(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/bh;->ev(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/bh;->G(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/bh;->H(J)V

    const/16 v2, 0x21c8

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/bh;->cL(I)V

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/bi;->b(Lcom/tencent/mm/modelvoice/bh;)Z

    const-string v2, "MicroMsg.VoiceLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " file:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->AF()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  stat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->AF()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const-string v0, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " failed msg id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->AF()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/bh;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/storage/ap;->a(JLcom/tencent/mm/storage/ak;)V

    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Et()Lcom/tencent/mm/modelvoice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/al;->run()V

    goto/16 :goto_0
.end method

.method final K(Lcom/tencent/mm/storage/ak;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3859
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v3, "medianote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3860
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v3, Lcom/tencent/mm/storage/bd;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/tencent/mm/storage/bd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 3862
    :cond_0
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/w/g;->dG(I)Lcom/tencent/mm/w/e;

    move-result-object v3

    .line 3864
    invoke-virtual {v3, v2}, Lcom/tencent/mm/w/e;->dw(I)V

    .line 3865
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AG()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Lcom/tencent/mm/w/g;->a(JLcom/tencent/mm/w/e;)I

    .line 3867
    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AM()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 3868
    :goto_0
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/w/e;->AI()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/mm/w/g;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3869
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/tencent/mm/a/c;->as(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3870
    :cond_1
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, " doSendImage : filePath is null or empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 3867
    goto :goto_0

    .line 3874
    :cond_3
    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ca;->aBS()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3875
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ca;->aDk()Lcom/tencent/mm/storage/cb;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/cb;->vA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@t.qq.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const v1, 0x7f0709bb

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    goto :goto_1

    :cond_4
    const v0, 0x7f07006d

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gLo:Lcom/tencent/mm/storage/ca;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/ca;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/f/a;->by(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3882
    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/tencent/mm/ui/chatting/iq;

    invoke-direct {v4, p0, v3, v0}, Lcom/tencent/mm/ui/chatting/iq;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/w/e;I)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3894
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    goto :goto_1
.end method

.method final L(Lcom/tencent/mm/storage/ak;)V
    .locals 4
    .parameter

    .prologue
    .line 3899
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "resendEmoji"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3901
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/bd;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/bd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 3903
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/tencent/mm/pluginsdk/i;->a(Ljava/lang/String;Lcom/tencent/mm/storage/y;Lcom/tencent/mm/storage/ak;)V

    .line 3904
    return-void
.end method

.method final M(Lcom/tencent/mm/storage/ak;)V
    .locals 4
    .parameter

    .prologue
    .line 3908
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3909
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/bd;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/bd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 3911
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cg(J)Z

    .line 3912
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    .line 3913
    return-void
.end method

.method final N(Lcom/tencent/mm/storage/ak;)V
    .locals 4
    .parameter

    .prologue
    .line 3917
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3918
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/bd;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/bd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 3920
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cg(J)Z

    .line 3921
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    .line 3922
    return-void
.end method

.method final O(Lcom/tencent/mm/storage/ak;)V
    .locals 5
    .parameter

    .prologue
    .line 3925
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "resendAppMsgEmoji"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3927
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/bd;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/bd;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 3930
    :cond_0
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/pluginsdk/model/app/b;->bs(J)Lcom/tencent/mm/pluginsdk/model/app/a;

    move-result-object v0

    .line 3932
    if-eqz v0, :cond_1

    iget-wide v1, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_msgInfoId:J

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 3934
    const-wide/16 v1, 0x65

    iput-wide v1, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_status:J

    .line 3935
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_offset:J

    .line 3936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/mm/pluginsdk/model/app/a;->field_lastModifyTime:J

    .line 3937
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/pluginsdk/model/app/b;->a(Lcom/tencent/mm/sdk/e/ad;[Ljava/lang/String;)Z

    .line 3938
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqi()Lcom/tencent/mm/pluginsdk/model/app/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/aw;->run()V

    .line 3943
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    .line 3944
    return-void

    .line 3940
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqi()Lcom/tencent/mm/pluginsdk/model/app/aw;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/aw;->bv(J)V

    goto :goto_0
.end method

.method final P(Lcom/tencent/mm/storage/ak;)V
    .locals 2
    .parameter

    .prologue
    .line 3947
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 3948
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    if-nez v1, :cond_0

    .line 3949
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->at(Ljava/lang/String;I)Ljava/lang/String;

    .line 3952
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->cg(J)Z

    .line 3953
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    .line 3954
    return-void
.end method

.method public final P(Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 5536
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ap;->kn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    .line 5537
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ap;->kl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 5538
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5539
    :cond_2
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2af5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 5542
    const v0, 0x7f0708d6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/mm/ui/chatting/jp;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/ui/chatting/jp;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)V

    new-instance v3, Lcom/tencent/mm/ui/chatting/jq;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/jq;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    .line 5562
    :goto_0
    return-void

    .line 5560
    :cond_3
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->wF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final Q(Lcom/tencent/mm/storage/ak;)V
    .locals 4
    .parameter

    .prologue
    .line 5791
    if-nez p1, :cond_0

    .line 5792
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "jacks go VoiceTransText need MsgInfo but null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5803
    :goto_0
    return-void

    .line 5795
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5796
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/voicetranstext/VoiceTransTextUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5798
    const-string v1, "voice_trans_text_msg_id"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5799
    const-string v1, "voice_trans_text_img_path"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5801
    invoke-static {p1}, Lcom/tencent/mm/modelvoice/bi;->l(Lcom/tencent/mm/storage/ak;)V

    .line 5802
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final VX()V
    .locals 2

    .prologue
    .line 5011
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setKeepScreenOn(Z)V

    .line 5012
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x3a98

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4465
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSceneEnd: errType = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4466
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cHU:Lcom/tencent/mm/ui/base/ch;

    if-eqz v0, :cond_0

    .line 4467
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cHU:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 4468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cHU:Lcom/tencent/mm/ui/base/ch;

    .line 4471
    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/platformtools/au;->ag(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4558
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 4475
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->glB:Z

    if-nez v0, :cond_3

    if-ne p1, v3, :cond_3

    const/4 v0, -0x6

    if-ne p2, v0, :cond_3

    .line 4476
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "not show verify dialog on background"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4480
    :cond_3
    invoke-static {p1, p2}, Lcom/tencent/mm/ui/cl;->bc(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4484
    const/16 v0, 0xa

    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4488
    :cond_4
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 4489
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 4497
    :sswitch_1
    check-cast p4, Lcom/tencent/mm/modelsimple/t;

    .line 4498
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/t;->Ch()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/t;->Ch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPd:Z

    if-nez v0, :cond_1

    .line 4499
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/t;->Ci()[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/t;->Ci()[B

    move-result-object v0

    array-length v0, v0

    if-eq v0, v3, :cond_6

    .line 4500
    :cond_5
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "unknown directsend op"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4503
    :cond_6
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/t;->Ci()[B

    move-result-object v0

    invoke-static {v0, v5}, Lcom/tencent/mm/a/i;->b([BI)I

    move-result v0

    .line 4504
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "directsend: status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4505
    packed-switch v0, :pswitch_data_0

    .line 4525
    :pswitch_0
    iput-boolean v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOK:Z

    .line 4526
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJI()V

    goto/16 :goto_0

    .line 4507
    :pswitch_1
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOK:Z

    .line 4508
    const v0, 0x7f0701ee

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mn(I)V

    .line 4509
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4510
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4515
    :pswitch_2
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOK:Z

    .line 4516
    const v0, 0x7f0701ef

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mn(I)V

    .line 4517
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4518
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 4536
    :sswitch_2
    check-cast p4, Lcom/tencent/mm/modelvoice/s;

    invoke-virtual {p4}, Lcom/tencent/mm/modelvoice/s;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Er()Lcom/tencent/mm/modelvoice/br;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/br;->hB(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/bh;

    move-result-object v0

    .line 4537
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/bh;->getStatus()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 4538
    const v0, 0x7f070bb9

    invoke-static {p0, v0}, Lcom/tencent/mm/sdk/platformtools/bq;->q(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 4547
    :cond_7
    const/16 v0, -0x31

    if-ne p2, v0, :cond_8

    .line 4548
    new-instance v0, Lcom/tencent/mm/ui/bindqq/g;

    new-instance v1, Lcom/tencent/mm/ui/chatting/jb;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/jb;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/bindqq/g;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/bindqq/o;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindqq/g;->aIC()V

    goto/16 :goto_0

    .line 4549
    :cond_8
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_9

    .line 4550
    const v0, 0x7f0701f5

    const v1, 0x7f0709bb

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 4552
    :cond_9
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-eqz v0, :cond_1

    const/16 v0, -0x15

    if-ne p2, v0, :cond_1

    .line 4553
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOT:Z

    goto/16 :goto_0

    .line 4489
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x6e -> :sswitch_0
        0x7f -> :sswitch_2
        0x20a -> :sswitch_0
    .end sparse-switch

    .line 4505
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4989
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->ca(Ljava/lang/String;)V

    .line 4990
    return-void
.end method

.method public final a(Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 845
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPA:Lcom/tencent/mm/ui/c;

    new-instance v1, Lcom/tencent/mm/ui/chatting/gg;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/gg;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/c;->k(Landroid/view/View$OnClickListener;)V

    .line 858
    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/ap;Lcom/tencent/mm/storage/at;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5767
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "on msg notify change"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5768
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/tencent/mm/storage/at;->bNl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5770
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aKa()V

    .line 5778
    :cond_0
    :goto_0
    return-void

    .line 5771
    :cond_1
    const-string v0, "insert"

    iget-object v1, p2, Lcom/tencent/mm/storage/at;->giq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5772
    iget-object v0, p2, Lcom/tencent/mm/storage/at;->dOI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p2, Lcom/tencent/mm/storage/at;->dOI:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->rO()I

    move-result v0

    if-nez v0, :cond_0

    .line 5773
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "oreh onNotifyChange receive a new msg"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5774
    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPh:J

    goto :goto_0
.end method

.method protected final aEZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    const-string v0, "_bizContact"

    .line 1487
    :goto_0
    return-object v0

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    iget-object v0, v0, Lcom/tencent/mm/storage/i;->field_username:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    const-string v0, "_chatroom"

    goto :goto_0

    .line 1487
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final aJC()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2203
    const-string v2, "MicroMsg.ChattingUI"

    const-string v3, "enter edit search mode, search stub view is null?%B"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPa:Landroid/view/View;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2205
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    .line 2206
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2207
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPa:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 2208
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPa:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2287
    :cond_0
    :goto_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nC(I)V

    .line 2288
    return-void

    :cond_1
    move v0, v6

    .line 2203
    goto :goto_0

    .line 2210
    :cond_2
    const v0, 0x7f0a01ab

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->nB(I)V

    .line 2211
    const v0, 0x7f0a01ac

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPa:Landroid/view/View;

    .line 2212
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPa:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2213
    const v0, 0x7f0a0712

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    .line 2214
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 2215
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 2217
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hl;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hl;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2225
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2227
    const v0, 0x7f0a022f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPe:Landroid/widget/TextView;

    .line 2228
    new-instance v0, Lcom/tencent/mm/ui/chatting/fv;

    new-instance v2, Lcom/tencent/mm/storage/ak;

    invoke-direct {v2}, Lcom/tencent/mm/storage/ak;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/fv;-><init>(Landroid/content/Context;Lcom/tencent/mm/storage/ak;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    .line 2230
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hm;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hm;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/fv;->a(Lcom/tencent/mm/ui/chatting/fw;)V

    .line 2237
    const v0, 0x7f0a0711

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    .line 2238
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2239
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2240
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hn;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hn;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2274
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/hp;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hp;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2283
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_0

    .line 2284
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/fn;->a(Lcom/tencent/mm/ui/chatting/fv;)V

    goto/16 :goto_1
.end method

.method public final aJD()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 2291
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "exit edit search mode"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    .line 2293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPl:Z

    .line 2294
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPe:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2295
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPe:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2297
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2298
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2300
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 2301
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2303
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2304
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->SM()V

    .line 2305
    return-void
.end method

.method public final aJE()Z
    .locals 1

    .prologue
    .line 2308
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    return v0
.end method

.method protected final aJG()V
    .locals 6

    .prologue
    const/high16 v2, 0x400

    .line 2980
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2981
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    if-eqz v0, :cond_0

    .line 2982
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 2983
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJv()V

    .line 3026
    :goto_0
    return-void

    .line 2985
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJs()V

    goto :goto_0

    .line 2990
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2991
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2992
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2993
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "tmessage"

    const-string v3, ".ui.TConversationUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 3025
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->finish()V

    goto :goto_0

    .line 2996
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2997
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2998
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2999
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "qmessage"

    const-string v3, ".ui.QConversationUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 3001
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-eqz v0, :cond_6

    .line 3002
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOT:Z

    if-nez v0, :cond_5

    .line 3003
    const v0, 0x7f070260

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0709bb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/chatting/id;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/chatting/id;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    new-instance v5, Lcom/tencent/mm/ui/chatting/ie;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/chatting/ie;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 3018
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/c/a/da;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/da;-><init>()V

    iget-object v2, v1, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    const/4 v3, 0x6

    iput v3, v2, Lcom/tencent/mm/c/a/db;->bOd:I

    iget-object v2, v1, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    iput-object v0, v2, Lcom/tencent/mm/c/a/db;->bOe:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    goto :goto_1

    .line 3020
    :cond_6
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOS:Z

    if-nez v0, :cond_2

    .line 3021
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3022
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3023
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected final aJI()V
    .locals 6

    .prologue
    const v4, 0x7f070073

    const/16 v3, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 3299
    iput-boolean v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOM:Z

    .line 3300
    iput-boolean v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gON:Z

    .line 3301
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPn:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 3302
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPn:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3305
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->notifyDataSetChanged()V

    .line 3306
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    if-eqz v0, :cond_2

    .line 3307
    const v0, 0x7f070809

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mn(I)V

    .line 3342
    :cond_1
    :goto_0
    return-void

    .line 3308
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3309
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asM()V

    .line 3310
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    goto :goto_0

    .line 3312
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3313
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    goto :goto_0

    .line 3315
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3316
    const v1, 0x7f070653

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    :goto_1
    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->dj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/tencent/mm/storage/RegionCodeDecoder;->aDe()Lcom/tencent/mm/storage/RegionCodeDecoder;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/RegionCodeDecoder;->vx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->rC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->dj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_8
    const v0, 0x7f070663

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3318
    :cond_9
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMn:Z

    if-eqz v0, :cond_c

    .line 3319
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3320
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/r;->ci(Ljava/lang/String;)I

    move-result v0

    .line 3321
    if-nez v0, :cond_a

    .line 3322
    const v0, 0x7f07022b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3324
    :cond_a
    new-array v0, v1, [Ljava/lang/Object;

    const v1, 0x7f07022b

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/r;->ci(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3327
    :cond_b
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rq()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/r;->ci(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3330
    :cond_c
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-eqz v0, :cond_e

    .line 3331
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3332
    const v0, 0x7f070ba0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3334
    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3337
    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    .line 3338
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3339
    const v0, 0x7f020617

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mD(I)V

    goto/16 :goto_0
.end method

.method public final aJJ()Z
    .locals 1

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3371
    const/4 v0, 0x1

    .line 3373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final aJK()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 4362
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeOpLogAndMarkRead :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4369
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4370
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    invoke-static {}, Lcom/tencent/mm/storage/o;->aAQ()Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 4371
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v0

    if-lez v0, :cond_0

    .line 4372
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    const-string v1, "officialaccounts"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->ua(Ljava/lang/String;)Z

    .line 4375
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->ua(Ljava/lang/String;)Z

    move-result v0

    .line 4402
    :cond_1
    :goto_0
    return v0

    .line 4378
    :cond_2
    const/4 v0, 0x0

    .line 4379
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v1

    .line 4380
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ap;->vf(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 4381
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4382
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4383
    new-instance v0, Lcom/tencent/mm/storage/ak;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ak;-><init>()V

    .line 4384
    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ak;->convertFrom(Landroid/database/Cursor;)V

    .line 4385
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    .line 4386
    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    .line 4387
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    const-string v4, "medianote"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4388
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->st()Lcom/tencent/mm/storage/au;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/storage/bp;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v7, v6, v1}, Lcom/tencent/mm/storage/bp;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/au;->a(Lcom/tencent/mm/storage/bz;)V

    .line 4390
    :cond_3
    const-string v3, "MicroMsg.ChattingUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writeOpLog: msgSvrId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->AH()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getStatus()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4392
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4393
    const/4 v0, 0x1

    .line 4394
    goto :goto_1

    .line 4395
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4397
    if-eqz v0, :cond_1

    .line 4398
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/o;->ua(Ljava/lang/String;)Z

    .line 4399
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ap;->vc(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public final aJL()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4608
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/tencent/mm/ui/contact/SelectContactUI;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4609
    const-string v0, "Contact_GroupFilter_Type"

    const-string v2, "@micromsg.qq.com"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4610
    const-string v0, "favour_include_biz"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4611
    const-string v0, "List_Type"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4613
    const-string v0, "received_card_name"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4614
    const-string v0, ""

    .line 4615
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-nez v2, :cond_0

    .line 4620
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    .line 4622
    :cond_0
    const-string v2, "Block_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4623
    const-string v0, "Add_SendCard"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4624
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4625
    return-void
.end method

.method public final aJM()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f070aff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4629
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 4631
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 4635
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/jc;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/jc;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {v1, v4, v0, v4, v2}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/base/v;)Lcom/tencent/mm/ui/base/ar;

    .line 4654
    return-void

    :cond_0
    move v0, v2

    .line 4629
    goto :goto_0

    .line 4633
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f070b00

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method public final aJN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4856
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->kn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final aJO()Z
    .locals 2

    .prologue
    .line 4878
    invoke-static {p0}, Lcom/tencent/mm/platformtools/au;->ah(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4879
    const-class v1, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aJP()Z
    .locals 1

    .prologue
    .line 5015
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    return v0
.end method

.method public final aJQ()Lcom/tencent/mm/ui/chatting/es;
    .locals 1

    .prologue
    .line 5056
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    return-object v0
.end method

.method public final aJU()V
    .locals 1

    .prologue
    .line 5215
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5216
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asK()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5221
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final aJW()V
    .locals 7

    .prologue
    const v6, 0x7f0207cb

    const/16 v2, 0x8

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5281
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/r;->cb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5282
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    if-eqz v0, :cond_0

    .line 5283
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->setVisibility(I)V

    .line 5334
    :cond_0
    :goto_0
    return-void

    .line 5289
    :cond_1
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ap;->kn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5290
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJV()V

    .line 5291
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ap;->kl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    .line 5292
    const-string v0, ""

    .line 5293
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5294
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    const v1, 0x7f0207cc

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->nm(I)V

    .line 5295
    const v0, 0x7f0708d4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5296
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    const v2, 0x7f0204b6

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->nn(I)V

    .line 5297
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    const v2, 0x7f0204b5

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->no(I)V

    .line 5298
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->start()V

    .line 5310
    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->setVisibility(I)V

    .line 5311
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->wk(Ljava/lang/String;)V

    goto :goto_0

    .line 5300
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v2, v5}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->no(I)V

    .line 5301
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->stop()V

    .line 5302
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v2, v6}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->nm(I)V

    .line 5303
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 5304
    const v2, 0x7f0708d5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5308
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    const v2, 0x7f0204b4

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->nn(I)V

    goto :goto_1

    .line 5305
    :cond_4
    if-eqz v1, :cond_3

    .line 5306
    const v0, 0x7f0708d3

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 5312
    :cond_5
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/aj;->oZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5313
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJV()V

    .line 5314
    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    .line 5315
    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v3, v1, Lcom/tencent/mm/c/a/gz;->bQU:Z

    .line 5316
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 5317
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5318
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    const v1, 0x7f0207cc

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->nm(I)V

    .line 5322
    :goto_3
    const v0, 0x7f0707b6

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/mm/pluginsdk/aj;->pa(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5324
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    const v2, 0x7f0207de

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->nn(I)V

    .line 5325
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->no(I)V

    .line 5326
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->stop()V

    .line 5327
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->setVisibility(I)V

    .line 5328
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->wk(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5320
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->nm(I)V

    goto :goto_3

    .line 5329
    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    if-eqz v0, :cond_0

    .line 5330
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->setVisibility(I)V

    .line 5331
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->no(I)V

    .line 5332
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->stop()V

    goto/16 :goto_0
.end method

.method public final aJY()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 5587
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "sdk not support dragdrop event"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5600
    :cond_0
    :goto_0
    return-void

    .line 5591
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 5592
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 5595
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    if-eqz v0, :cond_0

    .line 5596
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 5597
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->a(Landroid/view/View$OnDragListener;)V

    goto :goto_0
.end method

.method public final aJZ()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 5604
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    if-eqz v0, :cond_1

    .line 5723
    :cond_0
    :goto_0
    return-void

    .line 5608
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 5609
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "sdk not support dragdrop event"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5613
    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/chatting/jr;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/jr;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/jr;->run()V

    goto :goto_0
.end method

.method protected final aJc()V
    .locals 2

    .prologue
    .line 5007
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setKeepScreenOn(Z)V

    .line 5008
    return-void
.end method

.method public final aJe()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4849
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4850
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMl:Ljava/lang/String;

    .line 4852
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final aJx()V
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    if-nez v0, :cond_0

    .line 1650
    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1653
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setVisibility(I)V

    .line 1657
    :goto_0
    return-void

    .line 1655
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->E(Lcom/tencent/mm/storage/i;)V

    goto :goto_0
.end method

.method public final aJy()V
    .locals 1

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_0

    .line 1661
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dh(Z)V

    .line 1670
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJw()V

    .line 1671
    return-void

    .line 1667
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJz()V

    goto :goto_0
.end method

.method protected final aJz()V
    .locals 8

    .prologue
    const v3, 0x7f0708dd

    const v7, 0x7f0708da

    const v6, 0x7f02006b

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1675
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOy:Z

    if-eqz v0, :cond_1

    .line 1676
    :cond_0
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dh(Z)V

    .line 1775
    :goto_0
    return-void

    .line 1682
    :cond_1
    new-instance v0, Lcom/tencent/mm/ui/chatting/gs;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gs;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    .line 1712
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cy(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1713
    const v1, 0x7f0708de

    const v2, 0x7f020066

    new-instance v3, Lcom/tencent/mm/ui/chatting/gt;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/gt;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 1723
    invoke-virtual {p0, v5, v7, v6, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 1725
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2757

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 1769
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1770
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dh(Z)V

    .line 1771
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->m(IZ)V

    goto :goto_0

    .line 1727
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cz(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1729
    invoke-virtual {p0, v4, v7, v6, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_1

    .line 1731
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->db(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1732
    invoke-virtual {p0, v4, v7, v6, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_1

    .line 1734
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1735
    :cond_5
    const v1, 0x7f020069

    invoke-virtual {p0, v4, v3, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_1

    .line 1738
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@chatroom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/w;->cq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1739
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/r;->cb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1740
    const v1, 0x7f0205ac

    invoke-virtual {p0, v4, v3, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 1741
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dh(Z)V

    goto :goto_1

    .line 1743
    :cond_8
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dh(Z)V

    goto/16 :goto_0

    .line 1748
    :cond_9
    const v1, 0x7f020069

    invoke-virtual {p0, v4, v3, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILandroid/view/MenuItem$OnMenuItemClickListener;)V

    goto/16 :goto_1

    .line 1773
    :cond_a
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dh(Z)V

    goto/16 :goto_0
.end method

.method final at(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3992
    .line 3993
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 3994
    invoke-static {p1}, Lcom/tencent/mm/model/bv;->dz(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3996
    :cond_0
    return-object p1
.end method

.method public final ca(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 4977
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4978
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 4979
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4980
    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    .line 4981
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJI()V

    .line 4982
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJA()V

    .line 4985
    :cond_0
    return-void
.end method

.method public final cu(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 541
    invoke-static {p1}, Lcom/tencent/mm/model/w;->ct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-object v0

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 547
    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 553
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/hi;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/hi;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-interface {v0, p1, v1}, Lcom/tencent/mm/model/at;->a(Ljava/lang/String;Lcom/tencent/mm/model/au;)V

    .line 563
    :cond_3
    invoke-static {p1}, Lcom/tencent/mm/model/w;->cu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final dL(Z)V
    .locals 7
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/16 v6, 0x9

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 632
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gni:Z

    if-eqz v0, :cond_0

    .line 633
    if-eqz p1, :cond_3

    .line 634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_1

    .line 635
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "rotation %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 638
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setRequestedOrientation(I)V

    goto :goto_0

    .line 641
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setRequestedOrientation(I)V

    goto :goto_0

    .line 644
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setRequestedOrientation(I)V

    goto :goto_0

    .line 647
    :pswitch_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setRequestedOrientation(I)V

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 654
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setRequestedOrientation(I)V

    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    .line 656
    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setRequestedOrientation(I)V

    goto :goto_0

    .line 660
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->setRequestedOrientation(I)V

    goto :goto_0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final dM(Z)V
    .locals 4
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/if;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/if;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3067
    return-void
.end method

.method public final dN(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x1a

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5025
    if-eqz p1, :cond_0

    .line 5027
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/v;->dH(Z)V

    .line 5028
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    .line 5029
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 5030
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mm(I)V

    .line 5031
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aIS()V

    .line 5035
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5036
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIQ()V

    .line 5037
    const v0, 0x7f020061

    invoke-virtual {p0, v3, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->bb(II)V

    .line 5053
    :goto_0
    return-void

    .line 5040
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/v;->dH(Z)V

    .line 5041
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    .line 5042
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 5043
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->mm(I)V

    .line 5044
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aIS()V

    .line 5049
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07005a

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5050
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIQ()V

    .line 5051
    const v0, 0x7f020065

    invoke-virtual {p0, v3, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->bb(II)V

    goto :goto_0
.end method

.method public final dO(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const v3, 0x7f0707b4

    const/4 v7, 0x0

    .line 5381
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/r;->cb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5382
    const v0, 0x7f0707ca

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/tencent/mm/ui/base/h;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    .line 5528
    :goto_0
    return-void

    .line 5385
    :cond_0
    new-instance v0, Lcom/tencent/mm/c/a/gy;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gy;-><init>()V

    .line 5386
    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQS:Lcom/tencent/mm/c/a/gz;

    iput-boolean v6, v1, Lcom/tencent/mm/c/a/gz;->bQU:Z

    .line 5387
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 5388
    if-nez p1, :cond_4

    .line 5390
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/mm/pluginsdk/ap;->kn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5391
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ap;->kl(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    .line 5392
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5396
    const v0, 0x7f0707d1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5397
    const v0, 0x7f0707d3

    .line 5404
    :goto_1
    sget-object v2, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v3, 0x2af5

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 5405
    new-instance v2, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    .line 5406
    invoke-virtual {v2, v1}, Lcom/tencent/mm/ui/base/aa;->wg(Ljava/lang/String;)Lcom/tencent/mm/ui/base/aa;

    .line 5407
    const v1, 0x7f0709c1

    new-instance v3, Lcom/tencent/mm/ui/chatting/jj;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/jj;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/ui/base/aa;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 5415
    new-instance v1, Lcom/tencent/mm/ui/chatting/jk;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/jk;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Z)V

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/ui/base/aa;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    .line 5423
    invoke-virtual {v2}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    goto/16 :goto_0

    .line 5401
    :cond_1
    const v0, 0x7f0707d2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5402
    const v0, 0x7f0707d4

    goto :goto_1

    .line 5426
    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5427
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/jl;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/jl;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    new-instance v2, Lcom/tencent/mm/ui/chatting/jm;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/jm;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {p0, v0, v4, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 5446
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->pc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5449
    :cond_4
    iget-object v1, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v1, v1, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/c/a/gy;->bQT:Lcom/tencent/mm/c/a/ha;

    iget-object v0, v0, Lcom/tencent/mm/c/a/ha;->bQW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5450
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->pc(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5454
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 5455
    :cond_7
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/jn;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/jn;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    new-instance v2, Lcom/tencent/mm/ui/chatting/jo;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/jo;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {p0, v0, v4, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 5474
    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->wl(Ljava/lang/String;)V

    .line 5475
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->aHR()V

    goto/16 :goto_0
.end method

.method public final dq(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 4994
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5001
    :cond_0
    :goto_0
    return-void

    .line 4998
    :cond_1
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->azs()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4999
    const-string v1, "settings_shake"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 5000
    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/au;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 4409
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->SM()V

    .line 4411
    new-instance v0, Lcom/tencent/mm/ui/chatting/ja;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ja;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    .line 4419
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 807
    const v0, 0x7f030068

    return v0
.end method

.method public final i(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 5197
    invoke-static {p1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 5210
    :cond_0
    :goto_0
    return-void

    .line 5201
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOL:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/jg;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/jg;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected final i(IILjava/lang/String;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 4917
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v2, p1, p2, v3}, Lcom/tencent/mm/ui/cx;->a(Landroid/content/Context;III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4930
    :cond_0
    :goto_0
    return v0

    .line 4922
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    const/4 v2, -0x6

    if-ne p2, v2, :cond_2

    move v0, v1

    .line 4923
    goto :goto_0

    .line 4926
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intro_Switch"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, p1, p2, v2, p3}, Lcom/tencent/mm/ui/cl;->a(Landroid/app/Activity;IILandroid/content/Intent;Ljava/lang/String;)Lcom/tencent/mm/ui/base/x;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    .line 4930
    goto :goto_0
.end method

.method public final m(Lcom/tencent/mm/pluginsdk/model/app/k;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2840
    if-nez p1, :cond_1

    .line 2841
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "onAppSelected, info is null, %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2861
    :cond_0
    :goto_0
    return-void

    .line 2845
    :cond_1
    iget v0, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2846
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAppSeleted fail, app is in blacklist, packageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2850
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPx:Lcom/tencent/mm/ui/chatting/md;

    iget-object v1, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_openId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/md;->be(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->field_status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2851
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "SuggestionApp appSuggestionIntroUrl = %s"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->bSK:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2852
    iget-object v0, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->bSK:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2856
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2857
    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2858
    const-string v1, "rawUrl"

    iget-object v2, p1, Lcom/tencent/mm/pluginsdk/model/app/k;->bSK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2859
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final mG(I)V
    .locals 2
    .parameter

    .prologue
    .line 867
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPA:Lcom/tencent/mm/ui/c;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/c;->cW(Z)V

    .line 868
    return-void

    .line 867
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mm(I)V
    .locals 2
    .parameter

    .prologue
    .line 862
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPA:Lcom/tencent/mm/ui/c;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/c;->cX(Z)V

    .line 863
    return-void

    .line 862
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mn(I)V
    .locals 1
    .parameter

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->vT(Ljava/lang/String;)V

    .line 834
    return-void
.end method

.method public final nC(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 2312
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "search result count %d, in edit mode %B, can report %B"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPl:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2320
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPb:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    if-nez v0, :cond_0

    .line 2321
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "not search now"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    :goto_0
    return-void

    .line 2325
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPl:Z

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 2326
    iput-boolean v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPl:Z

    .line 2327
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x2a3b

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->d(I[Ljava/lang/Object;)V

    .line 2330
    :cond_1
    if-lez p1, :cond_2

    .line 2331
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2332
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2333
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPe:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2334
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2335
    :cond_2
    if-nez p1, :cond_3

    .line 2336
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2337
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2338
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPe:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2339
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2341
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPf:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2342
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 2343
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPe:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2344
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPg:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final nD(I)V
    .locals 3
    .parameter

    .prologue
    .line 2500
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->ck(Z)V

    .line 2501
    if-nez p1, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOI:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2503
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    .line 2504
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cXV:Lcom/tencent/mm/ui/base/MMPullDownView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/MMPullDownView;->aHk()V

    .line 2507
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2508
    invoke-static {}, Lcom/tencent/mm/ar/a;->aDD()Lcom/tencent/mm/ar/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".Listview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ar/a;->ao(Ljava/lang/String;I)V

    .line 2510
    :cond_1
    return-void

    .line 2500
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final nE(I)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3029
    invoke-static {}, Lcom/tencent/mm/model/be;->us()Lcom/tencent/mm/storage/d;

    move-result-object v0

    const/16 v1, 0x23

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/d;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3030
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3031
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3033
    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 3034
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v0, :cond_1

    if-eq p1, v7, :cond_0

    if-ne p1, v6, :cond_1

    .line 3035
    :cond_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "oreh old logic doDirectSend not support chatStatus:%d"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3060
    :goto_0
    return-void

    .line 3038
    :cond_1
    const-string v0, "MicroMsg.ChattingUI"

    const-string v2, "oreh old logic doDirectSend done chatStatus:%d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3039
    new-instance v0, Lcom/tencent/mm/modelsimple/t;

    invoke-static {p1}, Lcom/tencent/mm/a/i;->bm(I)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelsimple/t;-><init>(Ljava/util/List;[B)V

    .line 3040
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_0

    .line 3044
    :cond_2
    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3045
    :cond_3
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "oreh doDirectSend not support"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3049
    :cond_4
    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPh:J

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/au;->N(J)J

    move-result-wide v2

    .line 3050
    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    int-to-long v4, v0

    mul-long/2addr v4, v9

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    .line 3051
    :cond_5
    const-string v1, "MicroMsg.ChattingUI"

    const-string v4, "oreh doDirectSend interval too long: %d;  interval: %d"

    new-array v5, v6, [Ljava/lang/Object;

    div-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v1, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3055
    :cond_6
    const-string v0, "MicroMsg.ChattingUI"

    const-string v4, "oreh doDirectSend done chatStatus:%d, delt:%d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    div-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3057
    new-instance v0, Lcom/tencent/mm/modelsimple/t;

    invoke-static {p1}, Lcom/tencent/mm/a/i;->bm(I)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelsimple/t;-><init>(Ljava/util/List;[B)V

    .line 3058
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto/16 :goto_0
.end method

.method public final nF(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3957
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/es;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 3958
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bi;->fU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3959
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set MyRingtone file is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3960
    const-string v1, "voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ringtone.amr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3963
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "newPath "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3964
    invoke-static {v0, v5, v7}, Lcom/tencent/mm/sdk/platformtools/m;->f(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 3965
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3966
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3967
    const-string v1, "_data"

    invoke-virtual {v6, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    const-string v1, "title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3969
    const-string v0, "mime_type"

    const-string v1, "audio/amr"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    const-string v0, "is_ringtone"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3971
    const-string v0, "is_notification"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3972
    const-string v0, "is_alarm"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3973
    const-string v0, "is_music"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3975
    invoke-static {v5}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3976
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uri "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "_data=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3979
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3980
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3981
    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3985
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3986
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set riginton "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3987
    invoke-static {p0, v8, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 3988
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3989
    return-void

    .line 3983
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4001
    const-string v3, "MicroMsg.ChattingUI"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onAcvityResult requestCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4002
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/es;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4003
    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    if-eqz v3, :cond_0

    .line 4004
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 4008
    :cond_0
    if-eq p2, v6, :cond_3

    .line 4009
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_2

    .line 4010
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->clearFocus()V

    .line 4011
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/ui/chatting/ir;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ir;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4245
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 4024
    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    if-eqz v3, :cond_4

    .line 4025
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-virtual {v3, p1, p3}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->g(ILjava/lang/Object;)Z

    .line 4026
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 4242
    :pswitch_1
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "onActivityResult: not found this requestCode"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4033
    :pswitch_2
    if-eqz p3, :cond_2

    .line 4037
    const-string v1, "_delete_ok_"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4038
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->finish()V

    goto :goto_0

    .line 4044
    :pswitch_3
    if-ne v6, p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4045
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJs()V

    goto :goto_0

    .line 4051
    :pswitch_4
    if-eqz p3, :cond_2

    .line 4056
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4057
    const-string v3, "CropImageMode"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4058
    const-string v3, "CropImage_Filter"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4060
    const-string v3, "CropImage_Has_Raw_Img_Btn"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {v4}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4061
    const-string v0, "from_source"

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4064
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-static {p0, p3, v2, v0, v1}, Lcom/tencent/mm/ui/tools/h;->b(Landroid/app/Activity;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 4060
    goto :goto_1

    .line 4070
    :pswitch_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p3, v2}, Lcom/tencent/mm/pluginsdk/ui/tools/s;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->filePath:Ljava/lang/String;

    .line 4071
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4075
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4076
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4077
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4078
    const-string v3, "query_source_type"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4079
    const-string v3, "preview_image"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4080
    const-string v1, "preview_image_list"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 4081
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4083
    const-string v1, "gallery"

    const-string v2, ".ui.GalleryEntryUI"

    const/16 v3, 0xd9

    invoke-static {p0, v1, v2, v0, v3}, Lcom/tencent/mm/ak/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4088
    :pswitch_6
    const-string v0, "Chat_Mode"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4089
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    if-eqz v1, :cond_2

    .line 4090
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->setMode(I)V

    goto/16 :goto_0

    .line 4095
    :pswitch_7
    const-string v0, "CropImage_OutputPath_List"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOH:Ljava/util/ArrayList;

    .line 4096
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOH:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 4097
    :cond_7
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "send filepath is null or nil"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4098
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->clearFocus()V

    goto/16 :goto_0

    .line 4102
    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/be;->ut()Lcom/tencent/mm/sdk/platformtools/an;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/is;

    invoke-direct {v1, p0, p3}, Lcom/tencent/mm/ui/chatting/is;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/platformtools/an;->o(Ljava/lang/Runnable;)I

    .line 4109
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->clearFocus()V

    .line 4110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/ui/chatting/it;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/it;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 4122
    :pswitch_8
    const-string v2, "CropImage_OutputPath"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->filePath:Ljava/lang/String;

    .line 4123
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->filePath:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 4124
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->clearFocus()V

    goto/16 :goto_0

    .line 4128
    :cond_9
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->filePath:Ljava/lang/String;

    const-string v3, "CropImage_Compress_Img"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/tencent/mm/model/v;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "from_source"

    invoke-virtual {p3, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "CropImage_rotateCount"

    invoke-virtual {p3, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "MicroMsg.ChattingUI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dkimgsource"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "from_source"

    invoke-virtual {p3, v8, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    :goto_2
    invoke-direct {p0, v1, v4, v5, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(IIILjava/lang/String;)V

    .line 4129
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->clearFocus()V

    .line 4130
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/mm/ui/chatting/iu;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/iu;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    move v1, v0

    .line 4128
    goto :goto_2

    .line 4147
    :pswitch_9
    const-string v0, "art_smiley_slelct_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4148
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->au(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 4152
    :pswitch_a
    invoke-direct {p0, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->t(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4156
    :pswitch_b
    invoke-direct {p0, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->t(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4160
    :pswitch_c
    invoke-direct {p0, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->t(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4165
    :pswitch_d
    if-nez p3, :cond_b

    .line 4166
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "data == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4169
    :cond_b
    const-string v3, "VideoRecorder_ToUser"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4170
    const-string v4, "VideoRecorder_FileName"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4171
    const-string v5, "VideoRecorder_VideoLength"

    invoke-virtual {p3, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 4172
    const-string v6, "MicroMsg.ChattingUI"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fileName "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    invoke-static {v3}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    if-ltz v5, :cond_2

    .line 4176
    const-string v6, "medianote"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/tencent/mm/model/v;->tl()I

    move-result v6

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_e

    .line 4177
    new-instance v2, Lcom/tencent/mm/ai/q;

    invoke-direct {v2}, Lcom/tencent/mm/ai/q;-><init>()V

    invoke-virtual {v2, v4}, Lcom/tencent/mm/ai/q;->gR(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/tencent/mm/ai/q;->ez(I)V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ai/q;->setUser(Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {v9, v0}, Lcom/tencent/mm/n/f;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ai/q;->gS(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/tencent/mm/ai/q;->G(J)V

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->FC()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/tencent/mm/ai/q;->H(J)V

    invoke-virtual {v2, v5}, Lcom/tencent/mm/ai/q;->ew(I)V

    invoke-virtual {v2, v5}, Lcom/tencent/mm/ai/q;->ev(I)V

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ai/r;->gZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/r;->hb(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_c

    const-string v0, "MicroMsg.VideoLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get Video size failed :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v2, v0}, Lcom/tencent/mm/ai/q;->cJ(I)V

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ai/r;->ha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ai/r;->hb(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_d

    const-string v1, "MicroMsg.VideoLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "get Thumb size failed :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v2, v3}, Lcom/tencent/mm/ai/q;->ey(I)V

    const-string v0, "MicroMsg.VideoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "init record file:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " thumbsize:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/ai/q;->DK()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " videosize:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/ai/q;->vR()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc7

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ai/q;->setStatus(I)V

    new-instance v0, Lcom/tencent/mm/storage/ak;

    invoke-direct {v0}, Lcom/tencent/mm/storage/ak;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/mm/ai/q;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ak;->setType(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ak;->bZ(I)V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ak;->uN(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/ak;->setStatus(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/ai/q;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/bv;->dA(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ak;->G(J)V

    invoke-static {v0}, Lcom/tencent/mm/model/bv;->d(Lcom/tencent/mm/storage/ak;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ai/q;->dy(I)V

    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ai/r;->a(Lcom/tencent/mm/ai/q;)Z

    goto/16 :goto_0

    .line 4180
    :cond_e
    invoke-static {v4, v5, v3, v2, v0}, Lcom/tencent/mm/ai/v;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4181
    invoke-static {v4}, Lcom/tencent/mm/ai/v;->hf(Ljava/lang/String;)I

    .line 4182
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    goto/16 :goto_0

    .line 4185
    :pswitch_e
    if-ne p2, v6, :cond_2

    .line 4186
    const-string v0, "App_MsgId"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 4187
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/storage/ap;->bU(J)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 4188
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->H(Lcom/tencent/mm/storage/ak;)V

    goto/16 :goto_0

    .line 4193
    :pswitch_f
    if-ne p2, v6, :cond_2

    .line 4194
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 4195
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4196
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4197
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4198
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://com.android.contacts/contacts/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4199
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4205
    :pswitch_10
    if-eqz p3, :cond_2

    .line 4209
    const-string v2, "Select_Conv_User"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4210
    invoke-static {v2}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4211
    const-string v2, "MicroMsg.ChattingUI"

    const-string v3, "@ %s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "[nobody]"

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4212
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->qI(Ljava/lang/String;)V

    .line 4213
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOR:Z

    goto/16 :goto_0

    .line 4215
    :cond_f
    const-string v3, "MicroMsg.ChattingUI"

    const-string v4, "@ %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4216
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->qI(Ljava/lang/String;)V

    .line 4217
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOR:Z

    goto/16 :goto_0

    .line 4223
    :pswitch_11
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asN()V

    .line 4225
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asI()V

    goto/16 :goto_0

    .line 4026
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_2
        :pswitch_11
        :pswitch_b
        :pswitch_d
        :pswitch_7
        :pswitch_c
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 5225
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5226
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getConfiguration().orientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newConfig.orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5227
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 5228
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->aqY()V

    .line 5229
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJT()V

    .line 5230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 872
    const-string v0, "MicroMsg.ChattingUI"

    const-string v3, "onCreate %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 875
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 876
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v5, 0x7f030018

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->aU()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->aS()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->aT()V

    new-instance v0, Lcom/tencent/mm/ui/c;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aW()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/tencent/mm/ui/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPA:Lcom/tencent/mm/ui/c;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPp:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "Chat_User"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->FR()V

    .line 879
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJZ()V

    .line 880
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v5, 0x20a

    invoke-virtual {v0, v5, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 881
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v5, 0x6e

    invoke-virtual {v0, v5, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 882
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v5, 0xa

    invoke-virtual {v0, v5, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 883
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v5, 0x7f

    invoke-virtual {v0, v5, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 885
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/bi;->aqk()Lcom/tencent/mm/pluginsdk/model/app/bi;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v0}, Lcom/tencent/mm/pluginsdk/model/app/c;->a(ILcom/tencent/mm/pluginsdk/model/app/x;)V

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bj;->c(Lcom/tencent/mm/modelvoice/c;)V

    .line 887
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/p;->a(Lcom/tencent/mm/modelvoice/c;)V

    .line 889
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->a(Lcom/tencent/mm/sdk/e/ar;)V

    .line 890
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPw:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/c;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 891
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Lcom/tencent/mm/storage/ap;->a(Lcom/tencent/mm/storage/ar;Landroid/os/Looper;)V

    .line 897
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPs:Lcom/tencent/mm/sdk/e/al;

    invoke-interface {v0, v5}, Lcom/tencent/mm/pluginsdk/i;->a(Lcom/tencent/mm/sdk/e/al;)V

    .line 898
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cYV:Lcom/tencent/mm/sdk/e/al;

    invoke-interface {v0, v5}, Lcom/tencent/mm/pluginsdk/i;->c(Lcom/tencent/mm/sdk/e/al;)V

    .line 899
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v5, "RePullEmojiInfoDesc"

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->flR:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v5, v6}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 900
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v5, "TrackRemoveTip"

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPt:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v5, v6}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 901
    invoke-static {}, Lcom/tencent/mm/ab/r;->BN()Lcom/tencent/mm/ab/b;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPu:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ab/b;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 902
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPv:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/model/app/b;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 903
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->doi:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/pluginsdk/model/app/o;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 906
    new-instance v0, Lcom/tencent/mm/c/a/dd;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dd;-><init>()V

    .line 907
    iget-object v5, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput v2, v5, Lcom/tencent/mm/c/a/de;->bOi:I

    .line 908
    iget-object v5, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/z;->azj()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tencent/mm/c/a/de;->bOj:Ljava/lang/String;

    .line 909
    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 910
    iget-object v5, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput-boolean v1, v5, Lcom/tencent/mm/c/a/de;->bOk:Z

    .line 914
    :goto_0
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 916
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "@chatroom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 917
    const-string v0, "MicroMsg.ChattingUI"

    const-string v5, "chattingui find chatroom contact need update %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/tencent/mm/model/at;->do(Ljava/lang/String;)V

    .line 921
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 922
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/tencent/mm/ui/chatting/gh;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/chatting/gh;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 935
    :cond_3
    invoke-static {}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->ark()V

    .line 936
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJT()V

    .line 939
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/mm/pluginsdk/an;->Rp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 940
    const-string v0, "MicroMsg.ChattingUI"

    const-string v5, "chatting oncreate end track %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->aps()Lcom/tencent/mm/pluginsdk/an;

    move-result-object v6

    invoke-interface {v6}, Lcom/tencent/mm/pluginsdk/an;->Rp()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v5, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    new-instance v0, Lcom/tencent/mm/c/a/aa;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/aa;-><init>()V

    .line 942
    iget-object v1, v0, Lcom/tencent/mm/c/a/aa;->bMq:Lcom/tencent/mm/c/a/ab;

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/tencent/mm/c/a/ab;->username:Ljava/lang/String;

    .line 943
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPx:Lcom/tencent/mm/ui/chatting/md;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/md;->aKl()V

    .line 949
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->edd:Lcom/tencent/mm/model/am;

    if-nez v0, :cond_5

    .line 950
    new-instance v0, Lcom/tencent/mm/ui/chatting/gi;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gi;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->edd:Lcom/tencent/mm/model/am;

    .line 1007
    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->edd:Lcom/tencent/mm/model/am;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/al;->a(Lcom/tencent/mm/model/am;)V

    .line 1012
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 1013
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v1

    if-lez v1, :cond_8

    .line 1014
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v1

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/tencent/mm/storage/ap;->ag(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1015
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1016
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    iget-wide v5, v0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    iput-wide v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPh:J

    .line 1018
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/ak;

    .line 1019
    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMp:Lcom/tencent/mm/ui/chatting/jx;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Lcom/tencent/mm/ui/chatting/jx;->Q(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1020
    :cond_8
    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPh:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_9

    .line 1026
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->uV(Ljava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 1027
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1028
    iget-wide v0, v0, Lcom/tencent/mm/storage/ak;->field_createTime:J

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPh:J

    .line 1031
    :cond_9
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN Chatting OnCreate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    new-instance v0, Lcom/tencent/mm/ui/chatting/gj;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/gj;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/an;->b(Ljava/lang/Runnable;J)V

    .line 1045
    return-void

    .line 912
    :cond_a
    iget-object v5, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    iput-boolean v2, v5, Lcom/tencent/mm/c/a/de;->bOk:Z

    goto/16 :goto_0

    .line 916
    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/mm/storage/c;->tw(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v0, "MicroMsg.ChatroomMembersLogic"

    const-string v5, "state is die"

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/mm/storage/c;->tv(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    move v0, v1

    goto/16 :goto_1

    :cond_e
    move v0, v2

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1049
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "onDestroy %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1051
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMo:Z

    if-eqz v0, :cond_0

    .line 1052
    new-instance v0, Lcom/tencent/mm/c/a/da;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/da;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/da;->bOb:Lcom/tencent/mm/c/a/db;

    const/4 v2, 0x5

    iput v2, v1, Lcom/tencent/mm/c/a/db;->bOd:I

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 1053
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/tencent/mm/plugin/b;->eS(I)V

    .line 1056
    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x20a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1057
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1058
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1059
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1061
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/bi;->aqk()Lcom/tencent/mm/pluginsdk/model/app/bi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/bi;->aql()V

    .line 1062
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bj;->b(Lcom/tencent/mm/modelvoice/c;)V

    .line 1063
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/p;->b(Lcom/tencent/mm/modelvoice/c;)V

    .line 1065
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOV:Lcom/tencent/mm/ui/bindqq/g;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOV:Lcom/tencent/mm/ui/bindqq/g;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindqq/g;->onDetach()V

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooterCustom;->agJ()V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOG:Lcom/tencent/mm/ui/chatting/ChatFooterCustom;

    .line 1074
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->VX()V

    .line 1078
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aII()V

    .line 1079
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->onDestroy()V

    .line 1081
    new-instance v0, Lcom/tencent/mm/c/a/dd;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dd;-><init>()V

    .line 1082
    iget-object v1, v0, Lcom/tencent/mm/c/a/dd;->bOg:Lcom/tencent/mm/c/a/de;

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/mm/c/a/de;->bOi:I

    .line 1083
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 1085
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1086
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/k;->b(Lcom/tencent/mm/sdk/e/ar;)V

    .line 1087
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPw:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/c;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 1089
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPs:Lcom/tencent/mm/sdk/e/al;

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->b(Lcom/tencent/mm/sdk/e/al;)V

    .line 1090
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cYV:Lcom/tencent/mm/sdk/e/al;

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/i;->d(Lcom/tencent/mm/sdk/e/al;)V

    .line 1092
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "RePullEmojiInfoDesc"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->flR:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 1093
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "TrackRemoveTip"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPt:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 1095
    invoke-static {}, Lcom/tencent/mm/ab/r;->BN()Lcom/tencent/mm/ab/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPu:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ab/b;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 1096
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HF()Lcom/tencent/mm/pluginsdk/model/app/b;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPv:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/b;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 1097
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->HE()Lcom/tencent/mm/pluginsdk/model/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->doi:Lcom/tencent/mm/sdk/e/al;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/o;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 1100
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ap;->a(Lcom/tencent/mm/storage/ar;)V

    .line 1106
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->closeCursor()V

    .line 1107
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    if-eqz v0, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOt:Lcom/tencent/mm/ui/chatting/fv;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fv;->closeCursor()V

    .line 1110
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/es;->aDU()V

    .line 1112
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJR()V

    .line 1115
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPx:Lcom/tencent/mm/ui/chatting/md;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/md;->aKm()V

    .line 1117
    invoke-static {}, Lcom/tencent/mm/model/be;->nS()Lcom/tencent/mm/model/al;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->edd:Lcom/tencent/mm/model/am;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/al;->b(Lcom/tencent/mm/model/am;)V

    .line 1119
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sk()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1120
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/tencent/mm/plugin/webwx/a/b;->E(Ljava/lang/String;Z)V

    .line 1122
    :cond_5
    invoke-static {}, Lcom/tencent/mm/ui/chatting/lm;->release()V

    .line 1124
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1125
    invoke-static {}, Lcom/tencent/mm/p/ab;->yh()Lcom/tencent/mm/p/r;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/p/r;->eL(Ljava/lang/String;)V

    .line 1128
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->destroy()V

    .line 1130
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    if-eqz v0, :cond_7

    .line 1131
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPF:Lcom/tencent/mm/ui/base/TalkRoomPopupNav;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/TalkRoomPopupNav;->stop()V

    .line 1134
    :cond_7
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 1135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 3203
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3208
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3209
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    if-eqz v0, :cond_0

    .line 3210
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 3211
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJv()V

    .line 3253
    :goto_0
    return v2

    .line 3213
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJs()V

    goto :goto_0

    .line 3217
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3218
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asK()V

    goto :goto_0

    .line 3221
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->goBack()V

    goto :goto_0

    .line 3225
    :cond_3
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3228
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 3229
    const/16 v1, 0x19

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/v;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/v;->pj()Z

    move-result v1

    if-nez v1, :cond_6

    .line 3230
    :cond_4
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 3231
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "volume current:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    div-int/lit8 v1, v3, 0x7

    .line 3233
    if-nez v1, :cond_5

    move v1, v2

    .line 3236
    :cond_5
    sub-int v1, v4, v1

    invoke-virtual {v0, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3237
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "volume current:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " max:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3241
    :cond_6
    const/16 v1, 0x18

    if-ne p1, v1, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/v;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/v;->pj()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3242
    :cond_7
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 3243
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "volume current:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3244
    div-int/lit8 v1, v3, 0x7

    .line 3245
    if-nez v1, :cond_8

    move v1, v2

    .line 3248
    :cond_8
    add-int/2addr v1, v4

    invoke-virtual {v0, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3249
    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "volume current:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " max:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3253
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1379
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "onPause %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1380
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 1381
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->glB:Z

    .line 1383
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPk:Z

    if-eqz v0, :cond_0

    .line 1384
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJD()V

    .line 1385
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPj:Lcom/tencent/mm/ui/chatting/fn;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/fn;->aJv()V

    .line 1390
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/plugin/voicereminder/a/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/voicereminder/a/f;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->ePu:Lcom/tencent/mm/plugin/voicereminder/a/j;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/voicereminder/a/f;->b(Lcom/tencent/mm/plugin/voicereminder/a/j;)V

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPr:Lcom/tencent/mm/sdk/platformtools/ay;

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 1395
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->onPause()V

    .line 1396
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJK()Z

    .line 1397
    invoke-static {}, Lcom/tencent/mm/model/be;->uB()Lcom/tencent/mm/compatible/audio/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/audio/e;->pf()V

    .line 1399
    invoke-static {}, Lcom/tencent/mm/model/be;->nQ()Lcom/tencent/mm/model/ap;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/ap;->aQ(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMp:Lcom/tencent/mm/ui/chatting/jx;

    invoke-static {v0}, Lcom/tencent/mm/z/n;->b(Lcom/tencent/mm/model/ax;)V

    .line 1401
    invoke-static {p0}, Lcom/tencent/mm/z/f;->a(Lcom/tencent/mm/model/ay;)V

    .line 1402
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ap;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 1403
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ai/r;->a(Lcom/tencent/mm/ai/t;)V

    .line 1404
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/w/g;->f(Lcom/tencent/mm/sdk/e/al;)V

    .line 1405
    invoke-static {p0}, Lcom/tencent/mm/platformtools/v;->c(Lcom/tencent/mm/platformtools/w;)Z

    .line 1407
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v2}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 1408
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x1a

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 1409
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "dkcm old:%d footer:%d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v3}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1410
    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1411
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->getMode()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    .line 1412
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 1413
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1414
    iget v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOU:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/n;->ca(I)V

    .line 1415
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    .line 1419
    :cond_2
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "record stop on pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->Oe()V

    .line 1425
    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "keep_chatting_silent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sF(Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asy()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1429
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v2

    .line 1430
    if-eqz v2, :cond_3

    .line 1431
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/storage/n;->field_editingMsg:Ljava/lang/String;

    .line 1432
    iget-object v0, v2, Lcom/tencent/mm/storage/n;->field_editingMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v0, v2, Lcom/tencent/mm/storage/n;->field_conversationTime:J

    :goto_0
    invoke-static {v2, v5, v0, v1}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;IJ)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/tencent/mm/storage/n;->field_flag:J

    .line 1433
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    iget-object v1, v2, Lcom/tencent/mm/storage/n;->field_username:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v4}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;Z)I

    .line 1434
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "set editMsg history"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    .line 1440
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/chatting/v;->dI(Z)V

    .line 1441
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->release()V

    .line 1442
    invoke-static {}, Lcom/tencent/mm/model/be;->uB()Lcom/tencent/mm/compatible/audio/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/compatible/audio/e;->pm()V

    .line 1443
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aIS()V

    .line 1444
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/tencent/mm/pluginsdk/i;->al(Z)V

    .line 1453
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1454
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/aj;->b(Lcom/tencent/mm/pluginsdk/ai;)V

    .line 1456
    :cond_4
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1457
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/ap;->b(Lcom/tencent/mm/pluginsdk/ao;)V

    .line 1460
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    if-eqz v0, :cond_7

    .line 1461
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v0

    .line 1462
    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/tencent/mm/p/f;->cns:Z

    if-eqz v0, :cond_6

    .line 1463
    invoke-static {}, Lcom/tencent/mm/p/ab;->yh()Lcom/tencent/mm/p/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/p/r;->xZ()V

    .line 1466
    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOJ:Lcom/tencent/mm/ui/base/x;

    if-eqz v0, :cond_7

    .line 1467
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOJ:Lcom/tencent/mm/ui/base/x;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->dismiss()V

    .line 1471
    :cond_7
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->SM()V

    .line 1472
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x19b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1477
    return-void

    .line 1432
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1186
    const-string v0, "MicroMsg.ChattingUI"

    const-string v3, "onResume %d"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1188
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 1190
    invoke-static {}, Lcom/tencent/mm/model/be;->se()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "account not ready, mabey not call onDestroy!!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->finish()V

    .line 1339
    :goto_0
    return-void

    .line 1196
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ui/cl;->aFn()Lcom/tencent/mm/ui/base/x;

    .line 1197
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->glB:Z

    .line 1199
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPr:Lcom/tencent/mm/sdk/platformtools/ay;

    const-wide/32 v6, 0x493e0

    invoke-virtual {v0, v6, v7}, Lcom/tencent/mm/sdk/platformtools/ay;->bO(J)V

    .line 1201
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1202
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/c;->ts(Ljava/lang/String;)Lcom/tencent/mm/storage/b;

    move-result-object v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    .line 1203
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v0, :cond_b

    .line 1204
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOZ:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/tencent/mm/model/r;->b(Ljava/lang/String;Ljava/util/Map;)Z

    .line 1208
    :goto_2
    const-string v3, "MicroMsg.ChattingUI"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "chatroom display  "

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    if-eqz v0, :cond_c

    const-string v0, "show "

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "keep_chatting_silent"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/am;->sE(Ljava/lang/String;)Z

    .line 1218
    invoke-static {}, Lcom/tencent/mm/model/be;->nQ()Lcom/tencent/mm/model/ap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/tencent/mm/model/ap;->aQ(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->aT(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cR(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v3, Lcom/tencent/mm/plugin/voicereminder/a/f;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/voicereminder/a/f;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->ePu:Lcom/tencent/mm/plugin/voicereminder/a/j;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/voicereminder/a/f;->a(Lcom/tencent/mm/plugin/voicereminder/a/j;)V

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMp:Lcom/tencent/mm/ui/chatting/jx;

    invoke-static {v0}, Lcom/tencent/mm/z/n;->a(Lcom/tencent/mm/model/ax;)V

    .line 1225
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ap;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 1226
    invoke-static {}, Lcom/tencent/mm/ai/m;->DE()Lcom/tencent/mm/ai/r;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/tencent/mm/ai/r;->a(Lcom/tencent/mm/ai/t;Landroid/os/Looper;)V

    .line 1227
    invoke-static {}, Lcom/tencent/mm/w/ag;->Ba()Lcom/tencent/mm/w/g;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/w/g;->e(Lcom/tencent/mm/sdk/e/al;)V

    .line 1228
    invoke-static {p0}, Lcom/tencent/mm/platformtools/v;->b(Lcom/tencent/mm/platformtools/w;)Z

    .line 1230
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJw()V

    .line 1232
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cRp:Z

    if-nez v0, :cond_f

    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/chatting/v;->dH(Z)V

    .line 1234
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMi:Lcom/tencent/mm/ui/chatting/es;

    invoke-virtual {v0, v9}, Lcom/tencent/mm/ui/chatting/es;->ca(Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->onResume()V

    .line 1237
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/tencent/mm/storage/n;->field_editingMsg:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asO()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gJU:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOR:Z

    if-eqz v0, :cond_10

    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOR:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/au;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v7}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asw()I

    move-result v7

    invoke-virtual {v6, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v7}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asw()I

    move-result v7

    iget-object v8, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v6}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asw()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x1

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v6, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->qJ(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v6, v3, v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0, v9}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->qI(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->UY()V

    .line 1239
    :cond_3
    :goto_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gMj:Lcom/tencent/mm/ui/chatting/v;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/v;->aIP()V

    .line 1241
    sget-boolean v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOW:Z

    if-eqz v0, :cond_4

    .line 1242
    sput-boolean v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOW:Z

    .line 1243
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->dM(Z)V

    .line 1245
    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asJ()V

    .line 1249
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apj()Lcom/tencent/mm/pluginsdk/i;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/mm/pluginsdk/i;->al(Z)V

    .line 1251
    invoke-static {v1}, Lcom/tencent/mm/pluginsdk/ui/EmojiView;->ck(Z)V

    .line 1255
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1256
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apl()Lcom/tencent/mm/pluginsdk/aj;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/aj;->a(Lcom/tencent/mm/pluginsdk/ai;)V

    .line 1258
    :cond_5
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1259
    invoke-static {}, Lcom/tencent/mm/pluginsdk/h;->apu()Lcom/tencent/mm/pluginsdk/ap;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/ap;->a(Lcom/tencent/mm/pluginsdk/ao;)V

    .line 1261
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJW()V

    .line 1263
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aKa()V

    .line 1266
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    if-eqz v0, :cond_9

    .line 1268
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lcom/tencent/mm/p/f;->cns:Z

    if-eqz v0, :cond_16

    .line 1270
    new-instance v0, Lcom/tencent/mm/sdk/platformtools/LBSManager;

    invoke-direct {v0, p0, v9}, Lcom/tencent/mm/sdk/platformtools/LBSManager;-><init>(Landroid/content/Context;Lcom/tencent/mm/sdk/platformtools/x;)V

    .line 1271
    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->ayX()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v0}, Lcom/tencent/mm/sdk/platformtools/LBSManager;->ayY()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    .line 1272
    :goto_7
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    iget v3, v3, Lcom/tencent/mm/p/a;->field_hadAlert:I

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v3}, Lcom/tencent/mm/p/a;->xz()Z

    move-result v3

    if-eqz v3, :cond_15

    if-eqz v0, :cond_15

    .line 1273
    :cond_7
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    iget v3, v3, Lcom/tencent/mm/p/a;->field_hadAlert:I

    if-nez v3, :cond_13

    if-eqz v0, :cond_13

    .line 1275
    const v3, 0x7f070264

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v3, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1283
    :goto_8
    const v6, 0x7f0709bb

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/tencent/mm/ui/chatting/gn;

    invoke-direct {v7, p0, v0}, Lcom/tencent/mm/ui/chatting/gn;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Z)V

    new-instance v0, Lcom/tencent/mm/ui/chatting/go;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/go;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {p0, v3, v6, v7, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOJ:Lcom/tencent/mm/ui/base/x;

    .line 1316
    :cond_8
    :goto_9
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    iget v0, v0, Lcom/tencent/mm/p/a;->field_status:I

    if-ne v0, v2, :cond_9

    .line 1317
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    iput v1, v0, Lcom/tencent/mm/p/a;->field_status:I

    .line 1318
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/p/k;->b(Lcom/tencent/mm/p/a;)Z

    .line 1321
    :cond_9
    const-string v0, "MicroMsg.INIT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEVIN Chatting OnResume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x19b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    goto/16 :goto_0

    .line 1202
    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/storage/b;->aAk()Z

    move-result v0

    goto/16 :goto_1

    .line 1206
    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_2

    .line 1208
    :cond_c
    const-string v0, "not show"

    goto/16 :goto_3

    .line 1209
    :cond_d
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1211
    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    goto/16 :goto_4

    .line 1213
    :cond_e
    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOY:Z

    .line 1214
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gOZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_4

    :cond_f
    move v0, v1

    .line 1232
    goto/16 :goto_5

    .line 1237
    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->qJ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPo:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->qK(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dKO:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->asP()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x12

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_6

    :cond_12
    move v0, v1

    .line 1271
    goto/16 :goto_7

    .line 1276
    :cond_13
    if-eqz v0, :cond_14

    .line 1277
    const v3, 0x7f070265

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v3, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 1280
    :cond_14
    const v3, 0x7f070263

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v7}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {p0, v3, v6}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 1305
    :cond_15
    invoke-static {}, Lcom/tencent/mm/p/ab;->yh()Lcom/tencent/mm/p/r;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/p/r;->eM(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1309
    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v0}, Lcom/tencent/mm/p/a;->xA()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1310
    invoke-static {}, Lcom/tencent/mm/model/ar;->tZ()Lcom/tencent/mm/model/at;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/at;->do(Ljava/lang/String;)V

    .line 1311
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/m/c;->dX(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1139
    invoke-static {}, Lcom/tencent/mm/model/s;->te()Lcom/tencent/mm/model/s;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/gm;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/gm;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/s;->a(Lcom/tencent/mm/model/t;)V

    .line 1145
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStart()V

    .line 1146
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1150
    invoke-static {}, Lcom/tencent/mm/model/s;->te()Lcom/tencent/mm/model/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/s;->a(Lcom/tencent/mm/model/t;)V

    .line 1151
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStop()V

    .line 1152
    return-void
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->diX:Lcom/tencent/mm/ui/tools/dg;

    if-nez v0, :cond_0

    .line 3379
    new-instance v0, Lcom/tencent/mm/ui/tools/dg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/dg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->diX:Lcom/tencent/mm/ui/tools/dg;

    .line 3380
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->diX:Lcom/tencent/mm/ui/tools/dg;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dYT:Landroid/view/View$OnCreateContextMenuListener;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->dLv:Lcom/tencent/mm/ui/base/cd;

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/mm/ui/tools/dg;->b(Landroid/view/View;Landroid/view/View$OnCreateContextMenuListener;Lcom/tencent/mm/ui/base/cd;)V

    .line 3381
    return-void
.end method

.method public final qh(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 5243
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5244
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJW()V

    .line 5246
    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5236
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5237
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJW()V

    .line 5239
    :cond_0
    return-void
.end method

.method public final vT(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 838
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 839
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/tencent/mm/ao/b;->e(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    .line 840
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->gPA:Lcom/tencent/mm/ui/c;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/c;->setTitle(Ljava/lang/CharSequence;)V

    .line 841
    return-void
.end method

.method public final wD(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 4711
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->au(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final wE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 4863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://weixin.qq.com/emoticonstore/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4864
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4865
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->eSm:Lcom/tencent/mm/storage/i;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    if-eqz v1, :cond_0

    .line 4866
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->cSY:Lcom/tencent/mm/p/a;

    invoke-virtual {v1}, Lcom/tencent/mm/p/a;->xu()Lcom/tencent/mm/p/f;

    move-result-object v1

    .line 4867
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/tencent/mm/p/f;->cnz:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4868
    iget-object v1, v1, Lcom/tencent/mm/p/f;->cnz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4874
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final wF(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 5565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5566
    const-string v1, "map_view_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5567
    const-string v1, "map_sender_name"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->Ch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5568
    const-string v1, "map_talker_name"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aJe()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5569
    const-string v1, "fromWhereShare"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5570
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->aal()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "location"

    const-string v3, ".ui.RedirectUI"

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/mm/ak/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 5572
    return-void
.end method
