.class final Lcom/tencent/mm/pluginsdk/ui/chat/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/au;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ay;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ay;->fqX:Lcom/tencent/mm/pluginsdk/ui/chat/au;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/chat/au;->hide()V

    .line 217
    const/4 v0, 0x0

    return v0
.end method
