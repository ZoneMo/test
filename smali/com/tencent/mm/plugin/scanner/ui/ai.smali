.class public abstract Lcom/tencent/mm/plugin/scanner/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected cIr:Landroid/app/ProgressDialog;

.field protected djQ:Landroid/widget/TextView;

.field ebQ:Landroid/graphics/Point;

.field protected edD:Z

.field protected edE:Landroid/graphics/Rect;

.field protected edF:Lcom/tencent/mm/plugin/scanner/b/a;

.field protected edG:I

.field protected edH:I

.field protected edI:I

.field protected edJ:I

.field protected edK:Lcom/tencent/mm/plugin/scanner/ui/am;

.field protected edL:I

.field protected edM:Landroid/os/Handler;

.field private edN:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edD:Z

    .line 64
    const/16 v0, 0x28

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edI:I

    .line 65
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edJ:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->cIr:Landroid/app/ProgressDialog;

    .line 87
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/aj;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/aj;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ai;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edM:Landroid/os/Handler;

    .line 234
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edN:I

    .line 97
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    .line 98
    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->ebQ:Landroid/graphics/Point;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/plugin/scanner/ui/am;Landroid/graphics/Point;B)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edD:Z

    .line 64
    const/16 v0, 0x28

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edI:I

    .line 65
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edJ:I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->cIr:Landroid/app/ProgressDialog;

    .line 87
    new-instance v0, Lcom/tencent/mm/plugin/scanner/ui/aj;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/scanner/ui/aj;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ai;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edM:Landroid/os/Handler;

    .line 234
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edN:I

    .line 101
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    .line 102
    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->ebQ:Landroid/graphics/Point;

    .line 103
    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edI:I

    .line 104
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    iput p3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edN:I

    .line 237
    new-instance v0, Lcom/tencent/mm/modelsimple/aj;

    invoke-direct {v0, p2}, Lcom/tencent/mm/modelsimple/aj;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 240
    sget v1, Lcom/tencent/mm/n;->ber:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    sget v1, Lcom/tencent/mm/n;->bxo:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/scanner/ui/ak;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/plugin/scanner/ui/ak;-><init>(Lcom/tencent/mm/plugin/scanner/ui/ai;Lcom/tencent/mm/modelsimple/aj;)V

    invoke-static {p1, v1, v2}, Lcom/tencent/mm/ui/base/h;->b(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->cIr:Landroid/app/ProgressDialog;

    .line 248
    return-void
.end method

.method protected final a(Lcom/tencent/mm/protocal/a/sj;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 252
    iget-object v2, p1, Lcom/tencent/mm/protocal/a/sj;->fEI:Lcom/tencent/mm/protocal/a/rw;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rw;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-static {}, Lcom/tencent/mm/m/af;->vJ()Lcom/tencent/mm/m/m;

    move-result-object v3

    iget-object v4, p1, Lcom/tencent/mm/protocal/a/sj;->fzx:Lcom/tencent/mm/protocal/a/rv;

    invoke-static {v4}, Lcom/tencent/mm/platformtools/an;->a(Lcom/tencent/mm/protocal/a/rv;)[B

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/tencent/mm/m/m;->c(Ljava/lang/String;[B)Z

    .line 254
    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->cIr:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->cIr:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 257
    :cond_0
    invoke-static {v2}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 258
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->aAp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 262
    invoke-static {}, Lcom/tencent/mm/p/ab;->ye()Lcom/tencent/mm/p/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/mm/p/k;->eG(Ljava/lang/String;)Lcom/tencent/mm/p/a;

    move-result-object v3

    .line 263
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/p/a;->xD()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 265
    const-string v3, "Chat_User"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v2, "finish_direct"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 267
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/a;->Tm()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v3}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/pluginsdk/e;->d(Landroid/content/Intent;Landroid/content/Context;)V

    .line 293
    :cond_1
    :goto_0
    return v0

    .line 272
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 273
    iget v4, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edN:I

    invoke-static {v3, p1, v4}, Lcom/tencent/mm/pluginsdk/ui/tools/c;->a(Landroid/content/Intent;Lcom/tencent/mm/protocal/a/sj;I)V

    .line 274
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/tencent/mm/storage/i;->rb()Z

    move-result v1

    if-nez v1, :cond_3

    .line 276
    const-string v1, "Contact_IsLBSFriend"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    :cond_3
    iget v1, p1, Lcom/tencent/mm/protocal/a/sj;->fNp:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_4

    .line 280
    sget-object v1, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v4, 0x283a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edN:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v1}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 283
    invoke-static {}, Lcom/tencent/mm/plugin/scanner/a;->Tm()Lcom/tencent/mm/pluginsdk/e;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/tencent/mm/pluginsdk/e;->c(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 290
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    sget v2, Lcom/tencent/mm/n;->bxx:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_6
    move v0, v1

    .line 293
    goto :goto_0
.end method

.method protected abstract aaA()I
.end method

.method public final aau()Lcom/tencent/mm/plugin/scanner/ui/am;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    return-object v0
.end method

.method protected abstract aav()V
.end method

.method protected abstract aaw()Lcom/tencent/mm/plugin/scanner/b/a;
.end method

.method protected abstract aax()I
.end method

.method protected abstract aay()I
.end method

.method protected abstract aaz()V
.end method

.method protected final at(II)D
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x3fe66666

    const v8, 0x3f8ccccd

    const/4 v7, 0x1

    .line 153
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    int-to-double v0, v0

    .line 154
    const-string v2, "MicroMsg.scanner.ScanMode"

    const-string v3, "dpiLevel [%s]"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const-wide v2, 0x3ff3333333333333L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    int-to-float v3, p1

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    .line 157
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    int-to-float v3, p2

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    .line 167
    :goto_0
    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v7, :cond_0

    .line 168
    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    .line 170
    :cond_0
    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v7, :cond_1

    .line 171
    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    .line 173
    :cond_1
    return-wide v0

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->ebQ:Landroid/graphics/Point;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->ebQ:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->ebQ:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    const/16 v3, 0x618

    if-le v2, v3, :cond_3

    .line 160
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    int-to-float v3, p1

    mul-float/2addr v3, v9

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    .line 161
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    int-to-float v3, p2

    mul-float/2addr v3, v9

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    goto :goto_0

    .line 163
    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    int-to-float v3, p1

    div-float/2addr v3, v8

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    .line 164
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v2

    int-to-float v3, p2

    div-float/2addr v3, v8

    invoke-static {v2, v3}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    goto :goto_0
.end method

.method protected final bf(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->djQ:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->djQ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edM:Landroid/os/Handler;

    const-wide/16 v1, 0xd2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edM:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->djQ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final bg(Z)Landroid/graphics/Rect;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edE:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->ebQ:Landroid/graphics/Point;

    iget v5, v0, Landroid/graphics/Point;->x:I

    .line 183
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->ebQ:Landroid/graphics/Point;

    iget v6, v0, Landroid/graphics/Point;->y:I

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edI:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v0

    .line 186
    iget-object v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v2}, Lcom/tencent/mm/plugin/scanner/ui/am;->aam()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 190
    :cond_1
    invoke-static {}, Lcom/tencent/mm/compatible/c/d;->pI()Z

    move-result v2

    if-nez v2, :cond_4

    .line 192
    if-ge v5, v6, :cond_3

    .line 193
    div-int/lit8 v2, v5, 0x2

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v3

    .line 194
    div-int/lit8 v2, v5, 0x2

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 195
    div-int/lit8 v2, v6, 0x2

    iget v7, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v2, v7

    .line 196
    sub-int v7, v2, v0

    if-lez v7, :cond_7

    .line 197
    sub-int v0, v2, v0

    .line 200
    :goto_0
    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    add-int/2addr v2, v0

    move v10, v2

    move v2, v0

    move v0, v10

    .line 227
    :goto_1
    const-string v7, "MicroMsg.scanner.ScanMode"

    const-string v8, "framingRect: width = %s, height = %s; left = %s, right = %s, top = %s, bottom = %s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    const/4 v1, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edE:Landroid/graphics/Rect;

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edE:Landroid/graphics/Rect;

    return-object v0

    .line 202
    :cond_3
    div-int/lit8 v2, v6, 0x2

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    div-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v3

    .line 203
    div-int/lit8 v2, v6, 0x2

    iget v3, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 204
    div-int/lit8 v2, v5, 0x2

    iget v7, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v2, v7

    .line 205
    sub-int v7, v2, v0

    if-lez v7, :cond_6

    .line 206
    sub-int v0, v2, v0

    .line 209
    :goto_2
    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    add-int/2addr v2, v0

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_1

    .line 214
    :cond_4
    if-ge v5, v6, :cond_5

    .line 215
    div-int/lit8 v0, v6, 0x2

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    .line 216
    div-int/lit8 v0, v6, 0x2

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edJ:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 218
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    add-int/2addr v0, v2

    goto/16 :goto_1

    .line 220
    :cond_5
    div-int/lit8 v0, v5, 0x2

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    div-int/lit8 v2, v2, 0x2

    sub-int v4, v0, v2

    .line 221
    div-int/lit8 v0, v5, 0x2

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edG:I

    div-int/lit8 v2, v2, 0x2

    add-int v3, v0, v2

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edK:Lcom/tencent/mm/plugin/scanner/ui/am;

    invoke-interface {v0}, Lcom/tencent/mm/plugin/scanner/ui/am;->aal()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edJ:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/e;->a(Landroid/content/Context;F)I

    move-result v2

    .line 223
    iget v0, p0, Lcom/tencent/mm/plugin/scanner/ui/ai;->edH:I

    add-int/2addr v0, v2

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_0
.end method

.method protected abstract hG(I)V
.end method

.method protected abstract onPause()V
.end method

.method protected abstract onResume()V
.end method
