.class public abstract Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field protected fki:Lcom/tencent/mm/pluginsdk/ui/h;

.field protected fkj:Lcom/tencent/mm/pluginsdk/ui/chat/ar;

.field protected fkk:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/pluginsdk/ui/chat/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->fkj:Lcom/tencent/mm/pluginsdk/ui/chat/ar;

    .line 55
    return-void
.end method

.method public final a(Lcom/tencent/mm/pluginsdk/ui/h;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->fki:Lcom/tencent/mm/pluginsdk/ui/h;

    .line 51
    return-void
.end method

.method public abstract aqY()V
.end method

.method public abstract aqZ()V
.end method

.method public abstract ara()V
.end method

.method public abstract arb()V
.end method

.method public abstract ch(Z)V
.end method

.method public abstract ci(Z)V
.end method

.method public abstract cj(Z)V
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public final kf(I)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/mm/pluginsdk/ui/ChatFooterPanel;->fkk:I

    .line 59
    return-void
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract reset()V
.end method
