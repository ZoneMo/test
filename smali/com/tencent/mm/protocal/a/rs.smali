.class public abstract Lcom/tencent/mm/protocal/a/rs;
.super Lcom/tencent/mm/am/a;
.source "SourceFile"


# instance fields
.field public fTY:Lcom/tencent/mm/protocal/a/au;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/tencent/mm/am/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/a/au;)Lcom/tencent/mm/protocal/a/rs;
    .locals 0
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/tencent/mm/protocal/a/rs;->fTY:Lcom/tencent/mm/protocal/a/au;

    .line 12
    return-object p0
.end method
