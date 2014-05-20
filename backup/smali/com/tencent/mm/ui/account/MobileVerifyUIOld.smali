.class public Lcom/tencent/mm/ui/account/MobileVerifyUIOld;
.super Lcom/tencent/mm/ui/MMActivity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bTR:Ljava/lang/String;

.field private cIr:Landroid/app/ProgressDialog;

.field private contentResolver:Landroid/content/ContentResolver;

.field private dUF:Lcom/tencent/mm/ui/base/x;

.field private eSL:Ljava/util/Timer;

.field private eSM:J

.field private eSN:Z

.field private eaA:Ljava/lang/String;

.field private fbp:[Ljava/lang/String;

.field private gqG:Lcom/tencent/mm/ui/account/mobile/a;

.field private grF:Landroid/widget/EditText;

.field private grG:Landroid/widget/TextView;

.field private grH:Landroid/widget/Button;

.field private grI:Landroid/widget/Button;

.field private grJ:Ljava/lang/String;

.field private grK:Lcom/tencent/mm/ui/account/fi;

.field private grL:Z

.field private grM:I

.field private grN:Ljava/lang/String;

.field private grO:I

.field private grP:I

.field private grQ:Landroid/widget/TextView;

.field private grR:Ljava/lang/String;

.field private grS:I

.field private grT:Z

.field private grU:Z

.field private grV:Z

.field private grW:Landroid/widget/TextView;

.field private grX:Landroid/widget/TextView;

.field private grY:I

.field private grZ:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    .line 92
    iput-object v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    .line 95
    iput-object v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSM:J

    .line 98
    iput-boolean v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSN:Z

    .line 105
    iput-boolean v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grL:Z

    .line 107
    iput-object v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grN:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    .line 109
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grR:Ljava/lang/String;

    .line 112
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grS:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grT:Z

    .line 114
    iput-boolean v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grU:Z

    .line 115
    iput-boolean v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grV:Z

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grY:I

    .line 121
    iput-boolean v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grZ:Z

    .line 1270
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/ui/account/mobile/a;)Lcom/tencent/mm/ui/account/mobile/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    return-object p1
.end method

.method private aFP()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 201
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSN:Z

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSL:Ljava/util/Timer;

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSN:Z

    .line 204
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSM:J

    .line 205
    new-instance v1, Lcom/tencent/mm/ui/account/dx;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/dx;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    .line 271
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSL:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 273
    :cond_0
    return-void
.end method

.method private aFQ()I
    .locals 2

    .prologue
    const/16 v0, 0x11

    .line 283
    iget v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    packed-switch v1, :pswitch_data_0

    .line 293
    :goto_0
    :pswitch_0
    return v0

    .line 285
    :pswitch_1
    const/16 v0, 0xf

    goto :goto_0

    .line 287
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private aFR()V
    .locals 3

    .prologue
    .line 1135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/account/RegByMobileSetPwdUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1136
    const-string v1, "kintent_hint"

    sget v2, Lcom/tencent/mm/n;->bys:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1138
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J
    .locals 4
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSM:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSM:J

    return-wide v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)J
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSM:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSN:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSL:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eSL:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grT:Z

    return v0
.end method

.method private goBack()V
    .locals 7

    .prologue
    .line 710
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 711
    const-string v0, "L200_100"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 713
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/account/mobile/MobileInputUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 714
    const-string v1, "mobile_input_purpose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->startActivity(Landroid/content/Intent;)V

    .line 717
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->finish()V

    .line 739
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eaA:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 721
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-nez v0, :cond_1

    .line 722
    sget v0, Lcom/tencent/mm/n;->brJ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    sget v0, Lcom/tencent/mm/n;->brK:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/tencent/mm/n;->brL:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/account/ee;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/account/ee;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    new-instance v6, Lcom/tencent/mm/ui/account/ef;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/account/ef;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto :goto_0

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->finish()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFP()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->SM()V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/tencent/mm/n;->bfC:I

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-ne v0, v7, :cond_1

    new-instance v0, Lcom/tencent/mm/c/a/cq;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cq;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/cq;->bNT:Lcom/tencent/mm/c/a/cr;

    iput-object p0, v1, Lcom/tencent/mm/c/a/cr;->context:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v0, Lcom/tencent/mm/c/a/cq;->bNU:Lcom/tencent/mm/c/a/cs;

    iget-object v5, v0, Lcom/tencent/mm/c/a/cs;->bNV:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/c/a/ct;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ct;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v0, Lcom/tencent/mm/c/a/ct;->bNW:Lcom/tencent/mm/c/a/cu;

    iget-object v6, v0, Lcom/tencent/mm/c/a/cu;->bNX:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelfriend/ai;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, ""

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelfriend/ai;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->bfu:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/account/ec;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/account/ec;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/modelfriend/ai;)V

    invoke-static {p0, v1, v7, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelfriend/ag;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFQ()I

    move-result v2

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelfriend/ag;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->bfu:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/account/ed;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/account/ed;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/modelfriend/ag;)V

    invoke-static {p0, v1, v7, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 10
    .parameter

    .prologue
    const/16 v5, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 80
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_400,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_400"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->if(Ljava/lang/String;)V

    :cond_0
    iput-boolean v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grL:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/tencent/mm/l;->bcv:I

    iget v7, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    new-array v8, v2, [Ljava/lang/Object;

    iget v9, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFP()V

    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelfriend/ai;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    const-string v3, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelfriend/ai;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    :goto_1
    sget v0, Lcom/tencent/mm/n;->brA:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    return-void

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    sget v1, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v6, Lcom/tencent/mm/l;->bcv:I

    iget v7, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    new-array v8, v2, [Ljava/lang/Object;

    iget v9, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFP()V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelfriend/ag;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v5

    :goto_2
    const-string v3, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelfriend/ag;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    goto :goto_1

    :pswitch_1
    const/16 v2, 0xe

    goto :goto_2

    :pswitch_2
    move v2, v3

    goto :goto_2

    :pswitch_3
    move v2, v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic l(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grT:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grU:Z

    return v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    return v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->goBack()V

    return-void
.end method

.method static synthetic q(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->dUF:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Lcom/tencent/mm/ui/base/x;
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->dUF:Lcom/tencent/mm/ui/base/x;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)Lcom/tencent/mm/ui/account/mobile/a;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 80
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->contentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "body"

    aput-object v0, v2, v6

    const-string v0, "_id"

    aput-object v0, v2, v11

    const-string v0, "date"

    aput-object v0, v2, v12

    const-string v0, "( "

    move v3, v6

    :goto_0
    iget-object v5, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->fbp:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->fbp:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " body like \"%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->fbp:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "%\" ) "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "body like \"%"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->fbp:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "%\" or "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and date > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x493e0

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "MicroMsg.MobileVerifyUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "sql where:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->contentResolver:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v2, -0x1

    const-wide/16 v0, 0x0

    :cond_4
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v3, v7, v0

    if-lez v3, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move-wide v0, v7

    goto :goto_3

    :cond_5
    iput-object v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grJ:Ljava/lang/String;

    if-ltz v2, :cond_6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v0, "body"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d{4,8}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grJ:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grL:Z

    if-nez v0, :cond_6

    iput-boolean v11, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grL:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->SM()V

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/tencent/mm/n;->bfC:I

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    :cond_6
    :goto_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_7
    move-object v0, v4

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    :cond_9
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-ne v0, v11, :cond_a

    new-instance v0, Lcom/tencent/mm/c/a/cq;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cq;-><init>()V

    iget-object v1, v0, Lcom/tencent/mm/c/a/cq;->bNT:Lcom/tencent/mm/c/a/cr;

    iput-object p0, v1, Lcom/tencent/mm/c/a/cr;->context:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v0, Lcom/tencent/mm/c/a/cq;->bNU:Lcom/tencent/mm/c/a/cs;

    iget-object v5, v0, Lcom/tencent/mm/c/a/cs;->bNV:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/c/a/ct;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ct;-><init>()V

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    iget-object v0, v0, Lcom/tencent/mm/c/a/ct;->bNW:Lcom/tencent/mm/c/a/cu;

    iget-object v6, v0, Lcom/tencent/mm/c/a/cu;->bNX:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x84

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelfriend/ai;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    const-string v4, ""

    move v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelfriend/ai;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->bfu:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/account/ev;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/account/ev;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/modelfriend/ai;)V

    invoke-static {p0, v1, v11, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_350_auto,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_350_auto"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->if(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    new-instance v0, Lcom/tencent/mm/modelfriend/ag;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFQ()I

    move-result v2

    const-string v5, ""

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelfriend/ag;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->bfu:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/account/ew;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/account/ew;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/modelfriend/ag;)V

    invoke-static {p0, v1, v11, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    goto/16 :goto_5
.end method


# virtual methods
.method protected final FR()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bindmcontact_mobile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    .line 313
    const-string v0, "MicroMsg.MobileVerifyUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init getintent mobile:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget v0, Lcom/tencent/mm/i;->anL:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    .line 316
    sget v0, Lcom/tencent/mm/i;->anI:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    .line 317
    sget v0, Lcom/tencent/mm/i;->aBT:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    .line 318
    sget v0, Lcom/tencent/mm/i;->anJ:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grG:Landroid/widget/TextView;

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grG:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/bc;->sL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    sget v1, Lcom/tencent/mm/n;->bfe:I

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 322
    sget v0, Lcom/tencent/mm/i;->anN:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grH:Landroid/widget/Button;

    .line 323
    sget v0, Lcom/tencent/mm/i;->anM:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grW:Landroid/widget/TextView;

    .line 324
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/c;->Zt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->fbp:[Ljava/lang/String;

    .line 325
    sget v0, Lcom/tencent/mm/n;->bvz:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grW:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    sget v0, Lcom/tencent/mm/i;->anD:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grX:Landroid/widget/TextView;

    .line 328
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grV:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grX:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grX:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/account/el;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/el;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    :goto_0
    new-array v0, v5, [Landroid/text/InputFilter;

    .line 350
    new-instance v1, Lcom/tencent/mm/ui/account/ex;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/ex;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    aput-object v1, v0, v7

    .line 356
    iget v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    if-eq v1, v5, :cond_2

    .line 357
    iget v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 362
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 364
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/mm/l;->bcv:I

    iget v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFP()V

    .line 378
    :goto_1
    iput-boolean v7, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grL:Z

    .line 379
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 380
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/widget/c;

    iget-object v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/mm/ui/widget/c;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 383
    sget v0, Lcom/tencent/mm/n;->bec:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/account/ey;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/ey;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-virtual {p0, v7, v0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->a(ILjava/lang/String;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 391
    invoke-virtual {p0, v7}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->dg(Z)V

    .line 393
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 394
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/ez;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/ez;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 425
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/account/fa;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fa;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/account/fd;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fd;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 575
    new-instance v0, Lcom/tencent/mm/ui/account/fg;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/account/fg;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 584
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grH:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/fh;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/fh;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 598
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grF:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/account/eb;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/account/eb;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 611
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grX:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 366
    :cond_1
    iget v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 367
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    sget v2, Lcom/tencent/mm/n;->brN:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/mm/f;->aac:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grI:Landroid/widget/Button;

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 374
    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grQ:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tencent/mm/l;->bcv:I

    iget v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFP()V

    goto/16 :goto_1
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/16 v6, 0x17c

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 810
    const-string v0, "MicroMsg.MobileVerifyUI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "onSceneEnd: errType = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " errCode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " errMsg = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 814
    iput-object v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    .line 818
    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_3

    .line 819
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 820
    iget-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grZ:Z

    .line 823
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    .line 826
    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFR()V

    .line 1129
    :cond_2
    :goto_0
    return-void

    .line 831
    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    if-eqz v0, :cond_6

    .line 832
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 833
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/mm/ui/account/mobile/a;->a(Lcom/tencent/mm/ui/MMActivity;IILjava/lang/String;)V

    .line 835
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 836
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 838
    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0xff

    invoke-virtual {v0, v2, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 839
    new-instance v0, Lcom/tencent/mm/modelsimple/ac;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelsimple/ac;-><init>(I)V

    .line 840
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 841
    sget v0, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    sget v0, Lcom/tencent/mm/n;->byr:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/ui/account/ek;

    invoke-direct {v2, p0, p4}, Lcom/tencent/mm/ui/account/ek;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/n/x;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->cIr:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 847
    :cond_5
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-ne v0, v7, :cond_2

    .line 848
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aFR()V

    goto :goto_0

    .line 854
    :cond_6
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v2, 0x91

    if-ne v0, v2, :cond_12

    .line 855
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x91

    invoke-virtual {v0, v2, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    move-object v0, p4

    .line 856
    check-cast v0, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/ag;->vI()I

    move-result v0

    .line 857
    const/16 v2, 0xf

    if-eq v0, v2, :cond_7

    const/16 v2, 0x9

    if-eq v0, v2, :cond_7

    const/16 v2, 0x11

    if-ne v0, v2, :cond_2

    .line 862
    :cond_7
    if-nez p1, :cond_b

    if-nez p2, :cond_b

    .line 864
    const/16 v2, 0xf

    if-ne v0, v2, :cond_9

    .line 865
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-ne v0, v7, :cond_8

    .line 866
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 867
    new-instance v1, Lcom/tencent/mm/ui/account/mobile/a;

    new-instance v2, Lcom/tencent/mm/ui/account/em;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/em;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/ag;->getUsername()Ljava/lang/String;

    move-result-object v0

    check-cast p4, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/ag;->zB()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/tencent/mm/ui/account/mobile/a;-><init>(Lcom/tencent/mm/ui/account/mobile/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    .line 875
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/account/mobile/a;->l(Lcom/tencent/mm/ui/MMActivity;)V

    goto/16 :goto_0

    .line 877
    :cond_8
    const-string v0, "R200_900_phone"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 878
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v0, p4

    .line 879
    check-cast v0, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/ag;->zC()Ljava/lang/String;

    move-result-object v0

    .line 880
    const-string v3, "regsetinfo_ticket"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    const-string v0, "regsetinfo_user"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 882
    const-string v0, "regsetinfo_ismobile"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 883
    const-string v0, "regsetinfo_NextControl"

    check-cast p4, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/ag;->zE()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    const-class v0, Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 885
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aal()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 890
    :cond_9
    const/16 v1, 0x11

    if-ne v0, v1, :cond_a

    .line 891
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 892
    new-instance v1, Lcom/tencent/mm/ui/account/mobile/a;

    new-instance v2, Lcom/tencent/mm/ui/account/en;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/en;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/ag;->getUsername()Ljava/lang/String;

    move-result-object v0

    check-cast p4, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/ag;->zB()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/tencent/mm/ui/account/mobile/a;-><init>(Lcom/tencent/mm/ui/account/mobile/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    .line 900
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/account/mobile/a;->l(Lcom/tencent/mm/ui/MMActivity;)V

    goto/16 :goto_0

    .line 904
    :cond_a
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 905
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    invoke-virtual {v0, v6, p0}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 906
    new-instance v1, Lcom/tencent/mm/ui/account/mobile/a;

    new-instance v2, Lcom/tencent/mm/ui/account/eo;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/eo;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/ag;->getUsername()Ljava/lang/String;

    move-result-object v0

    check-cast p4, Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/ag;->zB()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->bTR:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/tencent/mm/ui/account/mobile/a;-><init>(Lcom/tencent/mm/ui/account/mobile/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    .line 914
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->gqG:Lcom/tencent/mm/ui/account/mobile/a;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/account/mobile/a;->l(Lcom/tencent/mm/ui/MMActivity;)V

    goto/16 :goto_0

    .line 920
    :cond_b
    const/16 v2, 0xf

    if-ne v0, v2, :cond_e

    const/16 v2, -0xd4

    if-ne p2, v2, :cond_e

    .line 922
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-nez v0, :cond_c

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_600,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_600"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->if(Ljava/lang/String;)V

    .line 927
    :cond_c
    sget v0, Lcom/tencent/mm/k;->aWo:I

    invoke-static {p0, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 928
    sget v0, Lcom/tencent/mm/i;->aBc:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 929
    sget v1, Lcom/tencent/mm/i;->aBd:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 930
    sget v2, Lcom/tencent/mm/i;->aBk:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 931
    sget v6, Lcom/tencent/mm/n;->beG:I

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    sget v2, Lcom/tencent/mm/n;->beY:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 933
    new-instance v2, Lcom/tencent/mm/ui/account/ep;

    invoke-direct {v2, p0, p4}, Lcom/tencent/mm/ui/account/ep;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/n/x;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    sget v0, Lcom/tencent/mm/n;->bfd:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 961
    new-instance v0, Lcom/tencent/mm/ui/account/eq;

    invoke-direct {v0, p0, p4}, Lcom/tencent/mm/ui/account/eq;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/n/x;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    sget v0, Lcom/tencent/mm/n;->bds:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/account/es;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/account/es;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->dUF:Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/tencent/mm/ui/base/aa;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/base/aa;->dp(Z)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/base/aa;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/base/aa;->ai(Landroid/view/View;)Lcom/tencent/mm/ui/base/aa;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/aa;->aGI()Lcom/tencent/mm/ui/base/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/x;->show()V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Landroid/app/Dialog;)V

    goto :goto_1

    .line 1011
    :cond_e
    const/16 v2, 0x11

    if-ne v0, v2, :cond_10

    const/16 v0, -0x1e

    if-ne p2, v0, :cond_10

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",L200_900_phone,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L200_900_phone"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->if(Ljava/lang/String;)V

    .line 1015
    invoke-static {p3}, Lcom/tencent/mm/d/a;->be(Ljava/lang/String;)Lcom/tencent/mm/d/a;

    move-result-object v0

    .line 1016
    iget-object v1, v0, Lcom/tencent/mm/d/a;->desc:Ljava/lang/String;

    .line 1017
    invoke-static {v1}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lcom/tencent/mm/n;->bqc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_f
    const-string v2, ""

    sget v0, Lcom/tencent/mm/n;->bqe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/tencent/mm/n;->bqd:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/account/et;

    invoke-direct {v5, p0, p4}, Lcom/tencent/mm/ui/account/et;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/n/x;)V

    new-instance v6, Lcom/tencent/mm/ui/account/eu;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/account/eu;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 1072
    :cond_10
    const/16 v0, -0x33

    if-ne p2, v0, :cond_12

    .line 1074
    invoke-static {p3}, Lcom/tencent/mm/d/a;->be(Ljava/lang/String;)Lcom/tencent/mm/d/a;

    move-result-object v0

    .line 1075
    if-eqz v0, :cond_11

    .line 1076
    invoke-virtual {v0, p0, v3, v3}, Lcom/tencent/mm/d/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    goto/16 :goto_0

    .line 1078
    :cond_11
    sget v0, Lcom/tencent/mm/n;->bfw:I

    sget v1, Lcom/tencent/mm/n;->anM:I

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/base/h;->c(Landroid/content/Context;II)Lcom/tencent/mm/ui/base/x;

    goto/16 :goto_0

    .line 1084
    :cond_12
    invoke-virtual {p4}, Lcom/tencent/mm/n/x;->getType()I

    move-result v0

    const/16 v2, 0x84

    if-ne v0, v2, :cond_16

    .line 1086
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v2, 0x84

    invoke-virtual {v0, v2, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1087
    check-cast p4, Lcom/tencent/mm/modelfriend/ai;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/ai;->vI()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 1088
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 1089
    invoke-static {}, Lcom/tencent/mm/model/be;->uI()V

    .line 1090
    invoke-static {p0}, Lcom/tencent/mm/pluginsdk/c;->aR(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 1091
    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    .line 1092
    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grR:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grR:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v0, :cond_15

    .line 1093
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-ne v0, v1, :cond_14

    .line 1094
    const-string v0, "R300_300_QQ"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    .line 1098
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/friend/FindMContactAddUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1099
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1100
    const-string v2, "regsetinfo_ticket"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grN:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    const-string v2, "regsetinfo_NextStep"

    iget-object v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grR:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    const-string v2, "regsetinfo_NextStyle"

    iget v3, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grS:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1103
    const-string v2, "login_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1104
    sget-object v1, Lcom/tencent/mm/plugin/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v1, p0}, Lcom/tencent/mm/pluginsdk/e;->w(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 1105
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1106
    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMWizardActivity;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    .line 1107
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->finish()V

    goto/16 :goto_0

    :cond_13
    move v0, v4

    .line 1091
    goto :goto_2

    .line 1096
    :cond_14
    const-string v0, "R300_300_phone"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->ie(Ljava/lang/String;)V

    goto :goto_3

    .line 1109
    :cond_15
    sget-object v0, Lcom/tencent/mm/plugin/a/a;->cHS:Lcom/tencent/mm/pluginsdk/e;

    invoke-interface {v0, p0}, Lcom/tencent/mm/pluginsdk/e;->w(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1110
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1111
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->startActivity(Landroid/content/Intent;)V

    .line 1112
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grY:I

    .line 1113
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->finish()V

    goto/16 :goto_0

    .line 1123
    :cond_16
    sparse-switch p2, :sswitch_data_0

    move v0, v4

    :goto_4
    if-eqz v0, :cond_19

    move v0, v1

    :goto_5
    if-nez v0, :cond_2

    .line 1126
    if-nez p1, :cond_17

    if-eqz p2, :cond_2

    .line 1127
    :cond_17
    sget v0, Lcom/tencent/mm/n;->bfv:I

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1123
    :sswitch_0
    sget v0, Lcom/tencent/mm/n;->beS:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_4

    :sswitch_1
    sget v0, Lcom/tencent/mm/n;->beP:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_4

    :sswitch_2
    sget v0, Lcom/tencent/mm/n;->beR:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_4

    :sswitch_3
    sget v0, Lcom/tencent/mm/n;->beU:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_4

    :sswitch_4
    sget v0, Lcom/tencent/mm/n;->bfy:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    new-instance v3, Lcom/tencent/mm/ui/account/eg;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/account/eg;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    goto :goto_4

    :sswitch_5
    sget v0, Lcom/tencent/mm/n;->bfw:I

    sget v2, Lcom/tencent/mm/n;->anM:I

    new-instance v3, Lcom/tencent/mm/ui/account/eh;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/account/eh;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-static {p0, v0, v2, v3}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    goto :goto_4

    :sswitch_6
    invoke-static {}, Lcom/tencent/mm/model/be;->uH()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/protocal/j;->awH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v3, Lcom/tencent/mm/n;->bqs:I

    invoke-static {v0, v3}, Lcom/tencent/mm/an/a;->m(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->aal()Landroid/app/Activity;

    move-result-object v3

    sget v5, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/tencent/mm/ui/account/ei;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/account/ei;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    new-instance v6, Lcom/tencent/mm/ui/account/ej;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/account/ej;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;)V

    invoke-static {v2, v0, v3, v5, v6}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/x;

    move v0, v1

    goto/16 :goto_4

    :cond_18
    invoke-static {}, Lcom/tencent/mm/protocal/j;->awH()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_19
    move v0, v4

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_6
        -0x2b -> :sswitch_1
        -0x29 -> :sswitch_2
        -0x24 -> :sswitch_3
        -0x22 -> :sswitch_0
        -0x21 -> :sswitch_5
        -0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 196
    sget v0, Lcom/tencent/mm/k;->aXv:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    sget v0, Lcom/tencent/mm/n;->bfl:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-boolean v1, Lcom/tencent/mm/protocal/a;->fxu:Z

    if-eqz v1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/tencent/mm/n;->amt:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/tencent/mm/n;->bdl:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->vT(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    .line 132
    new-instance v0, Lcom/tencent/mm/ui/account/fi;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/account/fi;-><init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grK:Lcom/tencent/mm/ui/account/fi;

    .line 133
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grK:Lcom/tencent/mm/ui/account/fi;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_ticket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grN:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileverify_countdownsec"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grP:I

    .line 136
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileverify_countdownstyle"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grO:I

    .line 137
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileverify_fb"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grU:Z

    .line 138
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mobileverify_reg_qq"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grV:Z

    .line 139
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_NextStep"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grR:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regsetinfo_NextStyle"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grS:I

    .line 141
    iput-boolean v4, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grT:Z

    .line 142
    invoke-static {}, Lcom/tencent/mm/plugin/a/b;->FL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->eaA:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->FR()V

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grK:Lcom/tencent/mm/ui/account/fi;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grK:Lcom/tencent/mm/ui/account/fi;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grK:Lcom/tencent/mm/ui/account/fi;

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    .line 154
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 702
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->goBack()V

    .line 704
    const/4 v0, 0x1

    .line 706
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 177
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    .line 179
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grY:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 180
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grY:I

    .line 182
    :goto_0
    iget v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-nez v2, :cond_1

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",R200_300,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "R200_300"

    invoke-static {v2}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    .line 192
    :cond_0
    :goto_1
    return-void

    .line 185
    :cond_1
    iget v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",L200_400,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "L200_400"

    invoke-static {v2}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto :goto_1

    .line 188
    :cond_2
    iget v2, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-ne v2, v1, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",F200_300,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "F200_300"

    invoke-static {v2}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    .line 159
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    if-nez v0, :cond_1

    .line 160
    const-string v0, "R200_300"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->id(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",R200_300,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "R200_300"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 164
    const-string v0, "L200_400"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->id(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",L200_400,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L200_400"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/account/MobileVerifyUIOld;->grM:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 168
    const-string v0, "F200_300"

    invoke-static {v0}, Lcom/tencent/mm/plugin/a/b;->id(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/be;->uv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",F200_300,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F200_300"

    invoke-static {v1}, Lcom/tencent/mm/model/be;->ds(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/plugin/a/b;->b(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method
