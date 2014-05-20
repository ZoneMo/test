.class public Lcom/tencent/mm/ui/KeyboardLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private doQ:Z

.field private eAZ:Z

.field private glz:Lcom/tencent/mm/ui/ad;

.field private ue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->doQ:Z

    .line 20
    invoke-direct {p0}, Lcom/tencent/mm/ui/KeyboardLinearLayout;->reset()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->doQ:Z

    .line 15
    invoke-direct {p0}, Lcom/tencent/mm/ui/KeyboardLinearLayout;->reset()V

    .line 16
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->doQ:Z

    .line 42
    iput v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    .line 43
    iput-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->eAZ:Z

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->glz:Lcom/tencent/mm/ui/ad;

    .line 38
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 49
    iget-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->doQ:Z

    if-nez v0, :cond_5

    .line 50
    iput-boolean v4, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->doQ:Z

    .line 51
    iput p5, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    .line 52
    const-string v0, "MicroMsg.KeyboardLinearLayout"

    const-string v1, "init height:%d"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->glz:Lcom/tencent/mm/ui/ad;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->glz:Lcom/tencent/mm/ui/ad;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/ad;->iS(I)V

    .line 59
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->doQ:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->eAZ:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    if-le v0, p5, :cond_2

    .line 60
    iput-boolean v4, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->eAZ:Z

    .line 61
    iget-object v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->glz:Lcom/tencent/mm/ui/ad;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->glz:Lcom/tencent/mm/ui/ad;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/ad;->iS(I)V

    .line 64
    :cond_1
    const-string v0, "MicroMsg.KeyboardLinearLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show keyboard!! mHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->doQ:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->eAZ:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    sub-int/2addr v0, p5

    const/16 v1, 0x64

    if-gt v0, v1, :cond_4

    .line 67
    iput-boolean v5, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->eAZ:Z

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->glz:Lcom/tencent/mm/ui/ad;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->glz:Lcom/tencent/mm/ui/ad;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/ad;->iS(I)V

    .line 71
    :cond_3
    const-string v0, "MicroMsg.KeyboardLinearLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide keyboard!! mHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_4
    return-void

    .line 57
    :cond_5
    iget v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    if-ge v0, p5, :cond_6

    move v0, p5

    :goto_1
    iput v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/tencent/mm/ui/KeyboardLinearLayout;->ue:I

    goto :goto_1
.end method
