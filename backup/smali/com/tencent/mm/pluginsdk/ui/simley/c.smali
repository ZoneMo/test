.class final Lcom/tencent/mm/pluginsdk/ui/simley/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/al;


# instance fields
.field final synthetic fsN:Lcom/tencent/mm/pluginsdk/ui/simley/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/simley/b;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/simley/c;->fsN:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ca(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "event_update_group"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/c;->fsN:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v0, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->VERSION:I

    sget v1, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->VERSION:I

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/c;->fsN:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    sget v1, Lcom/tencent/mm/pluginsdk/ui/simley/VPSmileyPanel;->VERSION:I

    iput v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->VERSION:I

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/c;->fsN:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    iget v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->VERSION:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/mm/pluginsdk/ui/simley/b;->VERSION:I

    .line 76
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/c;->fsN:Lcom/tencent/mm/pluginsdk/ui/simley/b;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/b;->clear()V

    goto :goto_0
.end method
