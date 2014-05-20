.class public Lcom/tencent/mm/pluginsdk/ui/applet/av;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private bgColor:I

.field private fpa:Z

.field private fpb:Lcom/tencent/mm/pluginsdk/ui/applet/aw;

.field private linkColor:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->fpa:Z

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/mm/pluginsdk/ui/applet/aw;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->fpa:Z

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/f;->aat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->linkColor:I

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/tencent/mm/f;->aas:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->bgColor:I

    .line 30
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->username:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->fpb:Lcom/tencent/mm/pluginsdk/ui/applet/aw;

    .line 33
    return-void
.end method


# virtual methods
.method public final asg()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->fpa:Z

    return v0
.end method

.method public final cv(Z)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->fpa:Z

    .line 41
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->fpb:Lcom/tencent/mm/pluginsdk/ui/applet/aw;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->fpb:Lcom/tencent/mm/pluginsdk/ui/applet/aw;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->username:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/applet/aw;->oH(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 59
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 61
    iget-boolean v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->fpa:Z

    if-eqz v0, :cond_0

    .line 62
    iget v0, p0, Lcom/tencent/mm/pluginsdk/ui/applet/av;->bgColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    goto :goto_0
.end method
