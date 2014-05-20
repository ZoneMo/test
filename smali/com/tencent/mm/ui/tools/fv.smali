.class final Lcom/tencent/mm/ui/tools/fv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/w;


# instance fields
.field final synthetic hmu:Lcom/tencent/mm/ui/tools/fu;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/fu;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/fv;->hmu:Lcom/tencent/mm/ui/tools/fu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ai(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    packed-switch p2, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fv;->hmu:Lcom/tencent/mm/ui/tools/fu;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/fu;->hmt:Lcom/tencent/mm/ui/tools/ShowImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->b(Lcom/tencent/mm/ui/tools/ShowImageUI;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fv;->hmu:Lcom/tencent/mm/ui/tools/fu;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/fu;->hmt:Lcom/tencent/mm/ui/tools/ShowImageUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->UK()V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fv;->hmu:Lcom/tencent/mm/ui/tools/fu;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/fu;->hmt:Lcom/tencent/mm/ui/tools/ShowImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/ShowImageUI;->c(Lcom/tencent/mm/ui/tools/ShowImageUI;)V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
