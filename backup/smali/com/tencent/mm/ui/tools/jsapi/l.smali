.class final Lcom/tencent/mm/ui/tools/jsapi/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hpi:Lcom/tencent/mm/ui/tools/jsapi/j;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/j;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/l;->hpi:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/l;->hpi:Lcom/tencent/mm/ui/tools/jsapi/j;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/j;->b(Lcom/tencent/mm/ui/tools/jsapi/j;)V

    .line 149
    return-void
.end method
