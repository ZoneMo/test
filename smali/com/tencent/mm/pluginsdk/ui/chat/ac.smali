.class final Lcom/tencent/mm/pluginsdk/ui/chat/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fqG:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

.field final synthetic fqM:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1857
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ac;->fqG:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iput p2, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ac;->fqM:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ac;->fqG:Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;

    iget v1, p0, Lcom/tencent/mm/pluginsdk/ui/chat/ac;->fqM:I

    invoke-static {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;->b(Lcom/tencent/mm/pluginsdk/ui/chat/ChatFooter;I)V

    .line 1862
    return-void
.end method
