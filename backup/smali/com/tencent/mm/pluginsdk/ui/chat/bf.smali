.class final Lcom/tencent/mm/pluginsdk/ui/chat/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bf;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/bf;->frj:Lcom/tencent/mm/pluginsdk/ui/chat/bd;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/bd;->hide()V

    .line 149
    const/4 v0, 0x0

    return v0
.end method
